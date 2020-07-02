#Auto generated Octane revision tag
@TID51351REV0.4.0
Feature: Teste Funcional do Rede de Atendimento Whatsapp

	Background:
		Given configurar url da api

	Scenario Outline:	01.05 - Validar solicitação de Rede de Atendimento  enviando a localização fixa recebida de outra localidade.
		Given configurar telefone no filtro por numero "553488896714" e "true"
		Given limpar contexto da conta <passo> "553488896714"
		When envio localizacao com Latitude: "<latitude>" e Longitude: "<Longitude>"
		Then validando retorno Localizacao "<retornoAgencias>" e <passo>

		Examples:
			| passo | retornoAgencias                                                    | latitude    | Longitude   |
			| 1     | 3467;3906;Veja;agências;encontrei;Enviando;localização;atendimento | -18.9205641 | -48.2405239 |

	Scenario Outline:	01.06 - Validar solicitação de Rede de Atendimento enviando a localização fixa.
		Given configurar telefone no filtro por numero "553488896714" e "true"
		Given limpar contexto da conta <passo> "553488896714"
		When envio localizacao com Latitude: "<latitude>" e Longitude: "<Longitude>"
		Then validando retorno Localizacao "<retornoAgencias>" e <passo>

		Examples:
			| passo | retornoAgencias                                                     | latitude    | Longitude   |
			| 1     | 3467;3906;Veja;agências;encontrei;Enviando;localização;atendimento  | -18.9205641 | -48.2405239 |

	Scenario Outline:	01.12 - Informar endereço de agências mais próximas com o cliente perguntando de um serviço que resulta na ida para a agência. Resposta Válida
		Given configurar telefone no filtro por numero "553488896714" e "true"
		Given limpar contexto da conta <passo> "553488896714"
		When envio da mensagem "<pergunta>" no <passo>
		Then validando retorno da mensagem "<retornoBia>" e "<feedback>" e <passo>

		Examples:
			| passo | pergunta                                                | retornoBia                                         | feedback 										 |
			| 1     | Por quanto tempo os extratos ficam no internet banking? | ignorar     									   |eu consigo;passar informações;digitar o número   |
			| 2     | 93                                                      | Sebastião Pereira;santa;cecilia;usp;sao paulo;sp   |ignorar  |

	Scenario Outline:	01.13 - Informar endereço de agências mais próximas com o cliente perguntando de um serviço que resulta na ida para a agência. Resposta Inválida
		Given configurar telefone no filtro por numero "553488896714" e "true"
		Given limpar contexto da conta <passo> "553488896714"
		When envio da mensagem "<pergunta>" no <passo>
		Then validando retorno da mensagem "<retornoBia>" e "<feedback>" e <passo>

		Examples:
			| passo | pergunta                                                | retornoBia                                         | feedback |
			| 1     | Por quanto tempo os extratos ficam no internet banking? | ignorar				 							   | eu consigo;passar informações;digitar o número  |
			| 2     | 0                                                       | Ops;Não encontrei;informe;número da agência        | ignorar  |