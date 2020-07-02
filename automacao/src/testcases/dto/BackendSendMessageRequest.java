package dto;

import java.util.List;

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
@NoArgsConstructor
@AllArgsConstructor
@Builder
@JsonNaming(PropertyNamingStrategy.SnakeCaseStrategy.class)
public class BackendSendMessageRequest {

    private List<SendMessageRequest> messages;

}
