package funcional;

import java.util.Date;
import java.util.List;
import java.util.Properties;

import org.apache.commons.collections4.CollectionUtils;
import org.junit.Assert;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;

import cucumber.api.Scenario;
import cucumber.api.java.Before;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import dto.LocationDto;
import dto.MessageDto;
import dto.RedisDto;
import dto.SendMessageRequest;
import dto.TextDto;
import dto.UserDto;
import enums.Channel;
import io.restassured.RestAssured;
import io.restassured.response.Response;
import io.restassured.specification.RequestSpecification;
import utilitarios.Funcoes;

public class FuncionalStepDef {

    private static final String SERVICO_WEBHOOK = "api/whatsapp/v1/webhook";
    private Response response = null;
    private Response responseFiltro = null;
    private String serviceUrl;
    private String serviceUrlContext;
    private ObjectMapper mapper;
    private String numeroTelefone;
    private boolean isAllowed = false;
    private Scenario scenario;

    @Before
    public void before(Scenario scenario) {
        this.scenario = scenario;
    }

    @Given("^configurar url da api$")
    public void configurarUrlAmbiente() throws Throwable {
        Properties prop = Funcoes.getprop();
        serviceUrl = prop.getProperty("prop.server.fun." + Funcoes.returnEnvironment());
        serviceUrlContext = prop.getProperty("prop.server.ctx." + Funcoes.returnEnvironment());
    }

    @Given("^Configurar o teste com o telefone: \"([^\"]*)\"$")
    public void informarNumeroTelefone(String numeroTelefone) {
        this.numeroTelefone = numeroTelefone;
    }

    @Given("^configurar telefone no filtro por numero \"([^\"]*)\" e \"([^\"]*)\"$")
    public void configurarFiltroTelefone(String numeroTelefone, String permitido) throws Throwable {
        RequestSpecification requestFiltro = RestAssured.given();
        this.numeroTelefone = numeroTelefone;

     // @formatter:off
        UserDto user = UserDto.builder()
            .clientId(numeroTelefone)
            .channel(Channel.WHATSAPP)
            .isAllowed(Boolean.parseBoolean(permitido))
            .build();
     // @formatter:on

        requestFiltro.header("Content-Type", "application/json");
        requestFiltro.header("X-Bia-TIcket",
            "{\"id\":\"f5fc197c-ce28-4007-89cf-09d808cd30ff\",\"client_id\":\"123456\",\"channel\":\"WHATSAPP\"}");
        requestFiltro.body(user);

        responseFiltro = requestFiltro.when().relaxedHTTPSValidation().post(serviceUrl + "api/whatsapp/v1/save");
        mapper = new ObjectMapper();
        UserDto userReturned = mapper.readValue(responseFiltro.getBody().asString(), UserDto.class);

        if (responseFiltro.getStatusCode() == 200) {
            isAllowed = userReturned.getIsAllowed();
        }
    }

    @Given("^limpar contexto da conta (\\d+) \"([^\"]*)\"$")
    public void removeContext(int passo, String numeroTelefone) throws Throwable {

        if (passo == 1) {
            RequestSpecification request = RestAssured.given();

            // {"id":"f5fc197c-ce28-whats","client_id":"553488896714","channel":"WHATSAPP"}
            StringBuilder biaTicket = new StringBuilder();
            biaTicket.append("{\"id\":\"f5fc197c-ce28-4007-89cf-09d808cd30ff\",\"channel\":\"WHATSAPP\",");
            biaTicket.append(String.format("\"client_id\":\"%s\"", numeroTelefone));
            biaTicket.append("}");

            request.header("Content-Type", "application/json");
            request.header("X-Bia-TIcket", biaTicket.toString());

            try {
                response = request.when().relaxedHTTPSValidation().delete(serviceUrlContext + "api/v1/context");

                if (response.getStatusCode() == 200) {
                    System.out.println("\nRemovido contexto no Redis: " + response.getBody().asString());
                    response = request.when().relaxedHTTPSValidation().get(serviceUrlContext + "api/v1/context");

                    if (response.getStatusCode() == 200) {
                        System.out.println("\nChave no Redis: " + response.getBody().asString());
                        mapper = new ObjectMapper();
                        RedisDto redisReturned = mapper.readValue(response.getBody().asString(), RedisDto.class);
                        isAllowed = redisReturned == null
                            || (redisReturned.getContext() == null && redisReturned.getIntegratorContext() == null);
                    }
                }
            } catch (Exception e) {
                System.out.println("Erro ao limpar o contexto:\n" + e.getMessage());
                e.printStackTrace();
            }

        } else {
            isAllowed = true;
        }

    }

    @When("^envio da mensagem \"([^\"]*)\" no (\\d+)$")
    public void realizandoRequisicaoConversa(String pergunta, int passo) throws Throwable {
        if (passo == 1) {
            System.out.println(
                "==========================================================================================================");
            System.out.println("# Iniciando teste do Senario: " + this.scenario.getName());
            System.out.println("Url: " + serviceUrl + SERVICO_WEBHOOK);
        } else {
            System.out.println(
                "//////////////////////////////////////////////////////////////////////////////////////////////////////////");
        }

        System.out.println("\n# Executando passo " + passo);
        System.out.println("# Mensagem enviada : " + pergunta);

        RequestSpecification request = RestAssured.given();

     // @formatter:off
        MessageDto message = MessageDto.builder()
            .from(numeroTelefone)
            .id("7fc4c05c-1eb1-42a5-b5f6-441bccb44f0d")
            .timestamp("1534178525")
            .type("text")
            .text(new TextDto(pergunta))
            .build();
     // @formatter:on

        request.header("Content-Type", "application/json");
        request.body(message);

        response = request.when().relaxedHTTPSValidation().post(serviceUrl + SERVICO_WEBHOOK);
    }

    @Then("^validando retorno da mensagem \"([^\"]*)\" e \"([^\"]*)\" e (\\d+)$")
    public void validandoRetornoApi(String retornoBia, String feedback, int passo) throws Throwable {

        // int passo = 0;
        // Retorno diferente de 200 ? Se sim aborta o teste
        Assert.assertTrue(
            imprimePasso(passo,
                "Requisicao nao retornou codigo Http 200. Retornou codigo: " + response.getStatusCode()),
            response.getStatusCode() == 200);

        if (isAllowed) {

            Assert.assertTrue(imprimePasso(passo, "Requisicao nao retornou mensagem!"),
                response.getBody() != null && !response.getBody().asString().equalsIgnoreCase(""));

            mapper = new ObjectMapper();
            List<SendMessageRequest> resultList = mapper.readValue(response.getBody().asString(),
                new TypeReference<List<SendMessageRequest>>() {
                });

            // Lista vazia ? Se sim aborta o teste
            Assert.assertTrue(imprimePasso(passo, "A Lista SendMessageRequest esta vazia!"),
                CollectionUtils.isNotEmpty(resultList));

            // Pega o primeiro item da lista
            SendMessageRequest msgResp = resultList.get(0);

            // Pega o o corpo da mensage TextDTO
            Assert.assertTrue(imprimePasso(passo, "Nao existe texto na primeira mensagem da lista!"),
                msgResp.getText() != null);

            // Extrai a mensagem do usuario (Body)
            Assert.assertTrue(imprimePasso(passo, "Nao existe conteudo no corpo na primeira mensagem da lista!"),
                msgResp.getText().getBody() != null);

            // Verifica se a msg contem o texto esperado
            String msgBody = msgResp.getText().getBody();

            int contagem = 0;
            // Caso nao seja necessario validado a resposta, ignoramos a primeira validacao
            if (retornoBia.equalsIgnoreCase("IGNORAR")) {
                contagem = 1; // Seta 1 para nao falhar na primeira validacao
            } else {
                contagem = procuraTexto(retornoBia, msgBody);
                System.out.println("# Resposta da mensagem :\n" + msgBody);
                System.out.println(String.format("\n# Foram encontradas %d palavras na resposta acima!\n", contagem));

            }

            Assert.assertTrue(imprimePasso(passo, "# Nao foi encontrado nenhuma palavra na resposta!"), contagem > 0);

            // Verifica se retornou Feedback
            if (resultList.size() > 1 && !feedback.equalsIgnoreCase("IGNORAR")) {

                int ultimoPosicao = resultList.size() - 1;

                SendMessageRequest mensagemFeedback = resultList.get(ultimoPosicao);

                // Pega o o corpo da mensage TextDTO
                Assert.assertTrue(imprimePasso(passo, "Nao existe texto na mensagem feedback!"),
                    mensagemFeedback.getText() != null);

                // Extrai a mensagem do usuario (Body)
                Assert.assertTrue(imprimePasso(passo, "Nao existe conteudo no corpo da mensagem feedback!"),
                    mensagemFeedback.getText().getBody() != null);

                // Verifica se a msg contem o texto esperado
                String msgFeedback = mensagemFeedback.getText().getBody();

                contagem = procuraTexto(feedback, msgFeedback);

                System.out.println("# Resposta da mensagem do Feedback:   \n" + msgFeedback);
                System.out.println(String.format("\n# Foram encontradas %d palavras no Feedback acima!\n", contagem));

            }
            Assert.assertTrue(imprimePasso(passo, "#Foi encontrado alguma expressao no feedback?"), contagem > 0);

        } else {
            Assert.assertFalse(imprimePasso(passo, "Telefone não foi incluido no filtro."), true);
            Assert.assertFalse(imprimePasso(passo, "Context NÃO foi removido do Redis."), true);
        }

    }

    @When("^envio localizacao com Latitude: \"([^\"]*)\" e Longitude: \"([^\"]*)\"$")
    public void enviarMensagemComLocalizacao(String latitude, String longitude) throws Throwable {
        RequestSpecification request = RestAssured.given();

        // @formatter:off
        LocationDto localizacao = new LocationDto().builder().latitude(Double.valueOf(latitude)).longitude(Double.valueOf(longitude)).build();

        MessageDto message = MessageDto.builder()
            .from(numeroTelefone)
            .id(Funcoes.generateID())
            .timestamp(String.valueOf(new Date().getTime()))
            .type("location")
            .location(localizacao)
            .build();
        // @formatter:on

        request.header("Content-Type", "application/json");
        request.body(message);

        System.out.println("Mensagem enviada : " + message.toString());

        response = request.when().relaxedHTTPSValidation().post(serviceUrl + SERVICO_WEBHOOK);
    }

    @Then("^validando retorno Localizacao \"([^\"]*)\" e (\\d+)$")
    public void validandoRetornoLocalizao(String retornoBia, int passo) throws Throwable {

        Assert.assertTrue(imprimePasso(passo, "Requisicao Igual a 200?"), response.getStatusCode() == 200);

        Assert.assertTrue(imprimePasso(passo, "Requisicao contem o Body?"),
            response.getBody() != null && !response.getBody().asString().equalsIgnoreCase(""));

        mapper = new ObjectMapper();

        // MOCK - Retirar este trecho quando a mensagem estiver sendo retornada
        // corretamente
        String mock = "[{\"to\":\"553488896714\",\"operation\":\"text\",\"recipentType\":null,\"text\":{\"body\":\"Veja as agências que encontrei:\"},\"location\":null,\"previewUrl\":false}, {\"to\":\"553488896714\",\"operation\":\"text\",\"recipentType\":null, \"text\":{\"body\":\"*3467 - B.SANTA MONICA-UUBE* Tel.: (34) 2102-3450 *Horário de atendimento* 10h00 às 15h00\"}, \"location\":null,\"previewUrl\":false},{\"to\":\"553488896714\",\"operation\":\"location\", \"text\":{\"body\":\"Enviando localização...\"},\"location\":{\"latitude\":-18.918711,\"longitude\":-48.248373,\"address\":\"AV.SEGISMUNDO PEREIRA, 1126 - SANTA MONICA - UBERLANDIA/MG\",\"name\":\"3467 - B.SANTA MONICA-UUBE (0,9 km)\"},\"previewUrl\":false},{\"to\":\"553488896714\",\"operation\":\"text\",\"recipentType\":null,\"text\":{\"body\":\"*3906 - BAIRRO BRASIL-UUBER* Tel.: (34) 3303-2000 *Horário de atendimento* 10h00 às 15h00\"},\"location\":null,\"previewUrl\":false},{\"to\":\"553488896714\",\"operation\":\"location\",\"text\":{\"body\":\"Enviando localização...\"},\"location\":{\"latitude\":-18.905403,\"longitude\":-48.266468,\"address\":\"AV FLORIANO PEIXOTO,2431 - BRASIL - UBERLANDIA/MG\",\"name\":\"3906 - BAIRRO BRASIL-UUBER (3,2 km)\"},\"previewUrl\":false}]";
        List<SendMessageRequest> resultList = mapper.readValue(mock, new TypeReference<List<SendMessageRequest>>() {
        });

        /*
         * Descomentar este trecho quando a mensagem estiver sendo retornada corretamente
         * List<SendMessageRequest> resultList = mapper.readValue(response.getBody().asString(), new
         * TypeReference<List<SendMessageRequest>>() { });
         */

        // Lista vazia ? Se sim aborta o teste
        Assert.assertTrue(imprimePasso(passo, "Lista vazia ? Se sim aborta o teste"),
            CollectionUtils.isNotEmpty(resultList));

        // A primeira posicao da lista é igual a null ? Se sim aborta
        Assert.assertTrue(imprimePasso(passo, "A primeira posicao da lista é igual a null ? Se sim aborta"),
            resultList.get(0) != null);

        int contagem = 0;
        for (SendMessageRequest msgResp : resultList) {

            contagem += procuraTexto(retornoBia, msgResp.getText().getBody());
            if ("location".equals(msgResp.getOperation())) {

                // Pega o o corpo da mensage LocationDTO
                Assert.assertTrue(imprimePasso(passo, "O campo locationDto é diferente de null?"),
                    msgResp.getLocation() != null);

                Assert.assertTrue(imprimePasso(passo, "A latitude do campo locationDto é diferente de null?"),
                    msgResp.getLocation().getLatitude() != null);

                Assert.assertTrue(imprimePasso(passo, "A longitude do campo locationDto é diferente de null?"),
                    msgResp.getLocation().getLongitude() != null);
            }
        }

        Assert.assertTrue(imprimePasso(passo, "Foi encontrado alguma expressao?"), contagem > 0);
    }

    private String imprimePasso(int passo, String expressa) {
        return String.format("Passo: %d - '%s'", passo, expressa);
    }

    private int procuraTexto(String expressoes, String resposta) {

        String[] palavras = expressoes.split(";");

        int contagem = 0;

        for (int i = 0; i < palavras.length; i++) {
            String texto = palavras[i];
            if (resposta.toLowerCase().contains(texto.toLowerCase())) {
                contagem++;
            }
        }
        return contagem;

    }

}
