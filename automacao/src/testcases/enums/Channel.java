package enums;

import lombok.AllArgsConstructor;
import lombok.Getter;

/**
 * @author dali.santos@bradesco.com.br
 * @version $Id$
 * @since 1.0
 */

@Getter
@AllArgsConstructor
public enum Channel {

    WHATSAPP(1), MOBILE_PF(2), APPLE_BUSINESS_CHAT(3);

    private Integer id;

}
