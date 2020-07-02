package sistema;

import java.util.Properties;

import org.junit.Assert;

import com.fasterxml.jackson.databind.ObjectMapper;

import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import io.restassured.RestAssured;
import io.restassured.response.Response;
import io.restassured.specification.RequestSpecification;
import utilitarios.Funcoes;


public class SistemaStepDef {

    private Response response = null;
    private String serviceUrl;
    private ObjectMapper mapper;

    @Given("^que eu quero executar um servico no ambiente$")
    public void que_eu_quero_executar_um_servico_no_ambiente() throws Throwable {
        Properties prop = Funcoes.getprop();
        serviceUrl = prop.getProperty("prop.server.sis." + Funcoes.returnEnvironment());
    }

    @When("^envio a solicitacao POST \"([^\"]*)\"$")
    public void envio_a_solicitacao_POST(String url) throws Throwable {
        RequestSpecification request = RestAssured.given();
        request.header("X-Bia-Ticket", "{\"id\":\"id\",\"client_id\":\"553499999999\",\"channel\":\"WHATSAPP\"}");
        request.header("Content-Type", "application/json");
        response = request.when().relaxedHTTPSValidation().post(serviceUrl + url);
    }

    @Then("^valido o endpoint existe (\\d+) do caso de teste \"([^\"]*)\"$")
    public void valido_o_endpoint_existe(int status, String nome) throws Throwable {
        System.out.println("O endpoint " + nome + ", existe e retornou o codigo HTTP: " + response.getStatusCode());
        Assert.assertTrue(status != response.getStatusCode());

    }

}
