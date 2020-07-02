package dto;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.databind.PropertyNamingStrategy;
import com.fasterxml.jackson.databind.annotation.JsonNaming;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * Objeto de envio de mensagem para o Whatsapp
 * 
 * @author daniel.fer.barbosa@bradesco.com.br
 * @version $Id$
 * @since 1.0
 */

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
@JsonIgnoreProperties(ignoreUnknown = true)
@JsonNaming(PropertyNamingStrategy.SnakeCaseStrategy.class)
public class SendMessageRequest {

    private String to;
    private String operation;
    private String recipentType;
    private TextDto text;
    private LocationDto location;
    private boolean previewUrl;

}
