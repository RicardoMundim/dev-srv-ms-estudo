package br.com.estudos.dto;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.databind.PropertyNamingStrategy;
import com.fasterxml.jackson.databind.annotation.JsonNaming;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @author lucas.p.ribeiro@bradesco.com.br
 * @version $Id$
 * @since 1.0
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
@ApiModel(description = "Estrutura da mensagem quando o tipo da mensagem for uma imagem, audio, documento, video ou voz.")
@JsonIgnoreProperties(ignoreUnknown = true)
@JsonNaming(PropertyNamingStrategy.SnakeCaseStrategy.class)
public class MediaDto {

    @ApiModelProperty(value = "Descreve a imagem, o vídeo ou o documento. Não usado com mídia de áudio.", example = "Clique aqui para baixar!")
    private String caption;

    @ApiModelProperty(value = "Descreve o nome do arquivo para o documento. Usado somente com mídia de documento.", example = "Normas")
    private String file;

    @ApiModelProperty(value = "O ID do objeto de mídia.", example = "1457951467", required = true)
    private String id;

    @ApiModelProperty(value = "O protocolo e a URL da mídia a ser enviada. Use apenas com URLs HTTP / HTTPS.", example = "http(s)://the-url")
    private String link;

    @ApiModelProperty(value = "Tipo de mídia de Internet.", example = "ogg")
    private String mimeType;

    @ApiModelProperty(value = "Hash de criptografia.", example = "e3c85ec7807945e7e889f0f3cc5ce0515625958c1ffe54b1b47ae15acbcd6e6a")
    private String sha256;

}

