package br.com.estudos.config;

import java.util.ArrayList;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import springfox.documentation.builders.PathSelectors;
import springfox.documentation.builders.RequestHandlerSelectors;
import springfox.documentation.service.ApiInfo;
import springfox.documentation.service.Contact;
import springfox.documentation.spi.DocumentationType;
import springfox.documentation.spring.web.plugins.Docket;
import springfox.documentation.swagger2.annotations.EnableSwagger2;

@Configuration
@EnableSwagger2
public class SwaggerConfig {

    @Bean
    public Docket apiDocketWhatsapp() {
        
        return new Docket(DocumentationType.SWAGGER_2)
            .groupName("bia-proxy-whatsapp")
            .select()
            .apis(RequestHandlerSelectors.basePackage("br.com.bradesco.bia.proxy.whatsapp.api"))
            .paths(PathSelectors.any())
            .build()
            .apiInfo(getApiInfo("V1"));
    }
    
    private ApiInfo getApiInfo(String version) {

        return new ApiInfo(
            "BIA Proxy ",
            "Interface de comunicação entre o Canal e o Gateway dentro da Infraestrutura da BIA", 
            version,
            "https://termsofservice.bradesco.com.br", 
            new Contact("Departamento de Sistemas Bradesco", "", ""),
            "Licença de Uso", 
            "https://license.bradesco.com.br", 
            new ArrayList<>());
    }

}
