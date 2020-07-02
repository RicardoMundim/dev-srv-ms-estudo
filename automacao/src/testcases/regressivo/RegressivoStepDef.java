package regressivo;

import java.util.Properties;

import org.junit.Assert;

import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import io.restassured.RestAssured;
import io.restassured.response.Response;
import io.restassured.specification.RequestSpecification;
import utilitarios.Funcoes;


public class RegressivoStepDef {

    private Response response = null;
    private String serviceUrl;

    @Given("^que eu quero executar um servico no ambiente$")
    public void que_eu_quero_executar_um_servico_no_ambiente() throws Throwable {
        Properties prop = Funcoes.getprop();
        serviceUrl = prop.getProperty("prop.server.host." + Funcoes.returnEnvironment());
    }

    @When("^envio a solicitacao GET$")
    public void envio_a_solicitacao_GET() throws Throwable {
        RequestSpecification request = RestAssured.given();
        response = request.when().relaxedHTTPSValidation().get(serviceUrl + "health");
    }

    @Then("^valido o codigo de status (\\d+)$")
    public void valido_o_codigo_de_status(int arg1) throws Throwable {
        System.out.println(response.getStatusCode());
        Assert.assertEquals(arg1, response.getStatusCode());
    }
}
