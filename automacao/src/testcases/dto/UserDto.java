package dto;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.databind.PropertyNamingStrategy;
import com.fasterxml.jackson.databind.annotation.JsonNaming;

import enums.Channel;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @author catia.a.silva@bradesco.com.br
 * @version $Id$
 * @since 1.0
 */
@JsonIgnoreProperties(ignoreUnknown = true)
@JsonNaming(PropertyNamingStrategy.SnakeCaseStrategy.class)
@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class UserDto {

    private Integer id;
    private String clientId;
    private Channel channel;
    private Boolean isAllowed;

}
