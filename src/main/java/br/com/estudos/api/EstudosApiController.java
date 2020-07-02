package br.com.estudos.api;

import java.util.Date;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import br.com.estudos.dto.IdResponseDto;
import io.swagger.annotations.ApiOperation;

/**
 * @author lucas.p.ribeiro@bradesco.com.br
 * @version 2.1
 * @since 1.0
 */

@RestController
@RequestMapping("/api/estudo/v1")

public class EstudosApiController {

	/*
	 * @AuditLog(level = LEVEL.DEBUG)
	 * 
	 * @PatchMapping(value = "/context/{id}")
	 * 
	 * @ApiOperation(value =
	 * "EndPoint responsável por atualizar o context do Orquestrador.") public
	 * ResponseEntity<Object> updateContext(
	 * 
	 * @ApiParam(name = "id", value = "Número do telefone do cliente.", required =
	 * true) @PathVariable(name = "id", required = true) String id,
	 * 
	 * @ApiParam(name = "context", value = "Contexto do Orquestrador", required =
	 * true) @RequestBody Object context) throws IOException {
	 * this.whatsAppProxyService.updateContext(id, context); return
	 * ResponseEntity.ok().build(); }
	 */

	@PostMapping(value = "/id")
	@ApiOperation(value = "EndPoint responsável por receber um ID e retornar o ID com o horário.")
	public ResponseEntity<IdResponseDto> idService(@RequestBody Integer idEnviado) {
		IdResponseDto idResponseDto = new IdResponseDto(idEnviado, new Date());
		return new ResponseEntity<>(idResponseDto, HttpStatus.OK);
	}

	/*
	
	 public ResponseEntity<IdResponseDto> idService(@RequestBody Integer idEnviado) {
	 
	 	return new ResponseEntity<IdResponseDto>(new IdResponseDto(idEnviado, new Date()), HttpStatus.OK); 
	 }
	 
	*/

}
