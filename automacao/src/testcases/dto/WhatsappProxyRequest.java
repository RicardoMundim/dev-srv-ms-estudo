package dto;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @description Classe utilizada para estanciar o corpo da requisicao http enviada pelo Docker
 *              WhatsApp
 * @author daniel.fer.barbosa@bradesco.com.br
 * @version $Id$
 * @since 1.0
 */
@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class WhatsappProxyRequest {

    private List<MessageDto> messages;
    private Object context;

}
