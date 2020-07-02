package br.com.estudos.dto;

import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.databind.PropertyNamingStrategy;
import com.fasterxml.jackson.databind.annotation.JsonNaming;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
@JsonNaming(PropertyNamingStrategy.SnakeCaseStrategy.class)
public class IdResponseDto {

	private Integer idEnviado;
	
	@JsonFormat(pattern = "HH:mm", timezone =  "Brazil/East")
	private Date horarioEnvio;

}