package dto;

import java.util.List;

import com.fasterxml.jackson.annotation.JsonProperty;

/**
 * @description Classe utilizada para estanciar o objeto que recebe as informações de uma agência
 * @author daniel.ferreira@bradesco.com.br
 * @version $Id$
 * @since 1.0
 */

public class Ponto {

    @JsonProperty("pontoId")
    private String pontoId;

    @JsonProperty("canalId")
    private String canalId;

    @JsonProperty("codigo")
    private String codigo;

    @JsonProperty("uf")
    private String uf;

    @JsonProperty("cidade")
    private String cidade;

    @JsonProperty("bairro")
    private String bairro;

    @JsonProperty("cep")
    private String cep;

    @JsonProperty("endereco")
    private String endereco;

    @JsonProperty("foneDdd")
    private String foneDdd;

    @JsonProperty("fone")
    private String fone;

    @JsonProperty("faxDdd")
    private String faxDdd;

    @JsonProperty("fax")
    private String fax;

    @JsonProperty("latitude")
    private Double latitude;

    @JsonProperty("longitude")
    private Double longitude;

    @JsonProperty("distancia")
    private Double distancia;

    @JsonProperty("atendimentoInicio")
    private String atendimentoInicio;

    @JsonProperty("atendimentoFim")
    private String atendimentoFim;

    @JsonProperty("segmentos")
    private List<String> segmentos;

    @JsonProperty("cnpj")
    private String cnpj;

    @JsonProperty("nome")
    private String nome;

    @JsonProperty("modificado")
    private boolean modificado;

    @JsonProperty("plaintext")
    private String plaintext;

    public String getPontoId() {
        return pontoId;
    }

    public List<String> getSegmentos() {
        return segmentos;
    }

    public String getCidade() {
        return cidade;
    }

}
