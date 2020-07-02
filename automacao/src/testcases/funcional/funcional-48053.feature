#Auto generated Octane revision tag
@TID48053REV0.6.0
Feature: Teste Funcional do Informacional Whatsapp

	Background:
		Given configurar url da api
		
	 Scenario Outline:	01.01 - Validar Resposta da Pergunta - Como abrir uma conta pelo App.
		Given configurar telefone no filtro por numero "553488896714" e "true"
		Given limpar contexto da conta <passo> "553488896714"
		When envio da mensagem "<pergunta>" no <passo>
		Then validando retorno da mensagem "<retornoBia>" e "<feedback>" e <passo>
		
		Examples: 
	    |passo	|pergunta						|retornoBia            																					|feedback                     				   |
	    |1		|Como abrir uma conta pelo App	|Para abrir sua conta;acesse o App;abra sua conta;siga o passo a passo	    							|ignorar 					 				   |
	 
	 Scenario Outline:	01.02 - Validar Resposta da Pergunta - Comi abru uma conta nu aplicativu? (pergunta contendo erros gramaticais)
		Given configurar telefone no filtro por numero "553488896714" e "true"
		Given limpar contexto da conta <passo> "553488896714"
		When envio da mensagem "<pergunta>" no <passo>
		Then validando retorno da mensagem "<retornoBia>" e "<feedback>" e <passo>
		
		Examples: 
	    |passo	|pergunta							|retornoBia            																				|feedback                     				   |
	    |1		|Comi abru uma conta nu aplicativu?	|Para abrir sua conta;acesse o App;abra sua conta;siga o passo a passo	       						|ignorar 					 				   |
	 
	 Scenario Outline:	01.04 - Validar Resposta da Pergunta - Como cadastrar o token no celular
		Given configurar telefone no filtro por numero "553488896714" e "true"
		Given limpar contexto da conta <passo> "553488896714"
		When envio da mensagem "<pergunta>" no <passo>
		Then validando retorno da mensagem "<retornoBia>" e "<feedback>" e <passo>
		
		Examples: 
	    |passo	|pergunta							      				  		|retornoBia            																					|feedback                     				   	|
	    |1		|Como cadastrar o token no celular					 	      	|Autoatendimento;cadastrar;Chave de Segurança;Fone Fácil;Internet Banking			    				|ignorar 					 				    |
	 
	 Scenario Outline:	01.05 - Validar Resposta da Pergunta - Como encerrar uma conta
		Given configurar telefone no filtro por numero "553488896714" e "true"
		Given limpar contexto da conta <passo> "553488896714"
		When envio da mensagem "<pergunta>" no <passo>
		Then validando retorno da mensagem "<retornoBia>" e "<feedback>" e <passo>
		
		Examples: 
	    |passo	|pergunta							      				  		|retornoBia            																					|feedback                     				   	|
	    |1		|Como encerrar uma conta							 	      	|encerrar a conta;você precisa ir;sua Agencia Bradesco;CPF	 						   					|ignorar 					 				    |	
	 
	 Scenario Outline:	01.07 - Validar Resposta da Pergunta - Como solicitar um cartão de crédito
		Given configurar telefone no filtro por numero "553488896714" e "true"
		Given limpar contexto da conta <passo> "553488896714"
		When envio da mensagem "<pergunta>" no <passo>
		Then validando retorno da mensagem "<retornoBia>" e "<feedback>" e <passo>
		
		Examples: 
	    |passo	|pergunta							      				  		|retornoBia            																					|feedback                     				   	|
	    |1		|Como solicitar um cartão de crédito							|Acesse;nossos;escolher;Agencia Bradesco;solicite;cartão de credito 		    						|ignorar 		  								|		
	 
	Scenario Outline:	01.08 - Validar Resposta da Pergunta - O que é Invest Fácil
		Given configurar telefone no filtro por numero "553488896714" e "true"
		Given limpar contexto da conta <passo> "553488896714"
		When envio da mensagem "<pergunta>" no <passo>
		Then validando retorno da mensagem "<retornoBia>" e "<feedback>" e <passo>
		
		Examples: 
	    |passo	|pergunta							      				  		|retornoBia            																					|feedback                     				   	|
	    |1		|O que é Invest Fácil											|CDB;aplicação;automática;saldo;disponível;baixa automática;inteligente;cobrir débitos		 			|ignorar 				   						|		
	 
	Scenario Outline:	01.09 - Validar Resposta da Pergunta - O que é baixa automática
		Given configurar telefone no filtro por numero "553488896714" e "true"
		Given limpar contexto da conta <passo> "553488896714"
		When envio da mensagem "<pergunta>" no <passo>
		Then validando retorno da mensagem "<retornoBia>" e "<feedback>" e <passo>
		
		Examples: 
	    |passo	|pergunta							      				  		|retornoBia            																					|feedback                     				   	|
	    |1		|O que é baixa automática										|um serviço;baixa;transfere;automaticamente;resgate;saldo;poupança;valor necessário;cobrir um débito	|ignorar 				   						|		
	     
	Scenario Outline:	01.10 - Validar Resposta da Pergunta - Como visualizar a chave de segurança no celular
		Given configurar telefone no filtro por numero "553488896714" e "true"
		Given limpar contexto da conta <passo> "553488896714"
		When envio da mensagem "<pergunta>" no <passo>
		Then validando retorno da mensagem "<retornoBia>" e "<feedback>" e <passo>
		
		Examples: 
	    |passo	|pergunta							      				  		|retornoBia            																					|feedback                     				   	|
	    |1		|Como visualizar a chave de segurança no celular				|Chave de Segurança no App;acesse sua conta;toque em;Chave de Segurança;								|ignorar					 					|	
	    
	Scenario Outline:	01.11 - Validar Resposta da Pergunta - O que fazer caso esqueça a senha dos Canais Digitais?
		Given configurar telefone no filtro por numero "553488896714" e "true"
		Given limpar contexto da conta <passo> "553488896714"
		When envio da mensagem "<pergunta>" no <passo>
		Then validando retorno da mensagem "<retornoBia>" e "<feedback>" e <passo>
		
		Examples: 
	    |passo	|pergunta							      				  		|retornoBia            																					|feedback                     				   	|
	    |1		|O que fazer caso esqueça a senha dos Canais Digitais?			|faça um novo cadastro;primeiro titular da conta;dispositivo de segurança associado						|ignorar					 					|
	    
	Scenario Outline:	01.12 - Validar Resposta da Pergunta - Qual Chave de Segurança está cadastrada na conta?
		Given configurar telefone no filtro por numero "553488896714" e "true"
		Given limpar contexto da conta <passo> "553488896714"
		When envio da mensagem "<pergunta>" no <passo>
		Then validando retorno da mensagem "<retornoBia>" e "<feedback>" e <passo>
		
		Examples: 
	    |passo	|pergunta							      				  		|retornoBia            																					|feedback                     				   	|
	    |1		|Qual Chave de Segurança está cadastrada na conta?				|o sistema pede sua chave de segurança;qual dispositivo está cadastrado;TAN Code;Token Físico			|ignorar					 				   	|
	       
	Scenario Outline:	01.13 - Validar Resposta da Pergunta - O que é cartão de crédito?
		Given configurar telefone no filtro por numero "553488896714" e "true"
		Given limpar contexto da conta <passo> "553488896714"
		When envio da mensagem "<pergunta>" no <passo>
		Then validando retorno da mensagem "<retornoBia>" e "<feedback>" e <passo>
		
		Examples: 
	    |passo	|pergunta							      				  		|retornoBia            																					|feedback                     				   	|
	    |1		|O que é cartão de crédito?										|uma forma de pagamento;pagar as compras;parcelar														|ignorar									   	|
	           
	Scenario Outline:	01.14 - Validar Resposta da Pergunta - Qual é o melhor Investimento?
		Given configurar telefone no filtro por numero "553488896714" e "true"
		Given limpar contexto da conta <passo> "553488896714"
		When envio da mensagem "<pergunta>" no <passo>
		Then validando retorno da mensagem "<retornoBia>" e "<feedback>" e <passo>
		
		Examples: 
	    |passo	|pergunta							      				  		|retornoBia            																					|feedback                     				   	|
	    |1		|Qual é o melhor Investimento?									|objetivo financeiro de cada pessoa;seu perfil;Análise de Perfil do Investidor							|ignorar									   	|
	           
	Scenario Outline:	01.15 - Validar Resposta da Pergunta - O que fazer em caso de aplicação não solicitada?
		Given configurar telefone no filtro por numero "553488896714" e "true"
		Given limpar contexto da conta <passo> "553488896714"
		When envio da mensagem "<pergunta>" no <passo>
		Then validando retorno da mensagem "<retornoBia>" e "<feedback>" e <passo>
		
		Examples: 
	    |passo	|pergunta							      				  		|retornoBia            																					|feedback                     				   	|
	    |1		|O que fazer em caso de aplicação não solicitada?				|aplicação;sem você;pedir;contato com;sua agência														|ignorar									   	|
	               
	Scenario Outline:	01.16 - Validar Resposta da Pergunta - Como consultar o saldo de Investimentos pelo Aplicativo?
		Given configurar telefone no filtro por numero "553488896714" e "true"
		Given limpar contexto da conta <passo> "553488896714"
		When envio da mensagem "<pergunta>" no <passo>
		Then validando retorno da mensagem "<retornoBia>" e "<feedback>" e <passo>
		
		Examples: 
	    |passo	|pergunta							      				  		|retornoBia            																					|feedback                     				   	|
	    |1		|Como consultar o saldo de Investimentos pelo Aplicativo?		|consultar o saldo;consultar o saldo;link aqui															|ignorar									   	|
	         	
	 Scenario Outline:	01.17 - Validar Resposta da Pergunta - O que é CDB?
		Given configurar telefone no filtro por numero "553488896714" e "true"
		Given limpar contexto da conta <passo> "553488896714"
		When envio da mensagem "<pergunta>" no <passo>
		Then validando retorno da mensagem "<retornoBia>" e "<feedback>" e <passo>
		
		Examples: 
	    |passo	|pergunta							      				  		|retornoBia            																					|feedback                     				   	|
	    |1		|O que é CDB?													|Certificado de Depósito Bancário;um tipo de investimento;baixo risco									|ignorar									   	|
	         
	 Scenario Outline:	01.18 - Validar Resposta da Pergunta - Como fazer um consórcio?
		Given configurar telefone no filtro por numero "553488896714" e "true"
		Given limpar contexto da conta <passo> "553488896714"
		When envio da mensagem "<pergunta>" no <passo>
		Then validando retorno da mensagem "<retornoBia>" e "<feedback>" e <passo>
		
		Examples: 
	    |passo	|pergunta							      				  		|retornoBia            																					|feedback                     				   	|
	    |1		|Como fazer um consórcio?										|acessar o link;as opções conforme seu interesse;vá a qualquer Agência									|ignorar									   	|
	            
	 Scenario Outline:	01.19 - Validar Resposta da Pergunta - Como consultar informações sobre um consórcio?
		Given configurar telefone no filtro por numero "553488896714" e "true"
		Given limpar contexto da conta <passo> "553488896714"
		When envio da mensagem "<pergunta>" no <passo>
		Then validando retorno da mensagem "<retornoBia>" e "<feedback>" e <passo>
		
		Examples: 
	    |passo	|pergunta							      				  		|retornoBia            																					|feedback                     				   	|
	    |1		|Como consultar informações sobre um consórcio?					|acesse o site;Canal do Consorciado;digitar grupo;oferta de lance										|ignorar									   	|
	             
	 Scenario Outline:	01.20 - Validar Resposta da Pergunta - Como funciona o consórcio para veículos?
		Given configurar telefone no filtro por numero "553488896714" e "true"
		Given limpar contexto da conta <passo> "553488896714"
		When envio da mensagem "<pergunta>" no <passo>
		Then validando retorno da mensagem "<retornoBia>" e "<feedback>" e <passo>
		
		Examples: 
	    |passo	|pergunta							      				  		|retornoBia            																					|feedback                     				   	|
	    |1		|Como funciona o consórcio para veículos?						|consórcio;carta de crédito;veículos;automóveis;comprar;simulação										|ignorar									   	|
	           
	 Scenario Outline:	01.21 - Validar Resposta da Pergunta - Como emitir demonstrativo de imposto de renda para Consórcio?
		Given configurar telefone no filtro por numero "553488896714" e "true"
		Given limpar contexto da conta <passo> "553488896714"
		When envio da mensagem "<pergunta>" no <passo>
		Then validando retorno da mensagem "<retornoBia>" e "<feedback>" e <passo>
		
		Examples: 
	    |passo	|pergunta							      				  		|retornoBia            																					|feedback                     				   	|
	    |1		|Como emitir demonstrativo de imposto de renda para Consórcio?	|Emitir seu demonstrativo;faça o login;Extrato;															|ignorar									   	|
	           
	  Scenario Outline:	01.22 - Validar Resposta da Pergunta - Como retirar o boleto do consórcio para pagamento?
		Given configurar telefone no filtro por numero "553488896714" e "true"
		Given limpar contexto da conta <passo> "553488896714"
		When envio da mensagem "<pergunta>" no <passo>
		Then validando retorno da mensagem "<retornoBia>" e "<feedback>" e <passo>
		
		Examples: 
	    |passo	|pergunta							      				  		|retornoBia            																					|feedback                     				   	|
	    |1		|Como retirar o boleto do consórcio para pagamento?				|boleto do consórcio;para pagamento;Canal do Consorciado												|ignorar									   	|
	         
	  Scenario Outline:	01.23 - Validar Resposta da Pergunta - Como funciona o consórcio de imóvel?
		Given configurar telefone no filtro por numero "553488896714" e "true"
		Given limpar contexto da conta <passo> "553488896714"
		When envio da mensagem "<pergunta>" no <passo>
		Then validando retorno da mensagem "<retornoBia>" e "<feedback>" e <passo>
		
		Examples: 
	    |passo	|pergunta							      				  		|retornoBia            																					|feedback                     				   	|
	    |1		|Como funciona o consórcio de imóvel?							|carta de crédito;quitar um financiamento;fazer uma simulação;acessar o link							|ignorar									   	|
	      	
	  Scenario Outline:	01.24 - Validar Resposta da Pergunta - Como consultar o prazo restante, o saldo devedor e quantas parcelas foram pagas da cota de consórcio?
		Given configurar telefone no filtro por numero "553488896714" e "true"
		Given limpar contexto da conta <passo> "553488896714"
		When envio da mensagem "<pergunta>" no <passo>
		Then validando retorno da mensagem "<retornoBia>" e "<feedback>" e <passo>
		
		Examples: 
	    |passo	|pergunta							      				  																		|retornoBia            																					|feedback                     				   	|
	    |1		|Como consultar o prazo restante, o saldo devedor e quantas parcelas foram pagas da cota de consórcio?							|prazo restante;saldo devedor;parcelas pagas;Canal do Consorciado										|ignorar									   	|
	  
	  Scenario Outline:	01.25 - Validar Resposta da Pergunta - Como consultar o consórcio pelo aplicativo do Bradesco?
		Given configurar telefone no filtro por numero "553488896714" e "true"
		Given limpar contexto da conta <passo> "553488896714"
		When envio da mensagem "<pergunta>" no <passo>
		Then validando retorno da mensagem "<retornoBia>" e "<feedback>" e <passo>
		
		Examples: 
	    |passo	|pergunta							      				  		|retornoBia            																					|feedback                     				   	|
	    |1		|Como consultar o consórcio pelo aplicativo do Bradesco?		|não está disponível;consulta pelo App Bradesco															|ignorar									   	|
	 
	  Scenario Outline:	01.26 - Validar Resposta da Pergunta - Como contratar um empréstimo?
		Given configurar telefone no filtro por numero "553488896714" e "true"
		Given limpar contexto da conta <passo> "553488896714"
		When envio da mensagem "<pergunta>" no <passo>
		Then validando retorno da mensagem "<retornoBia>" e "<feedback>" e <passo>
		
		Examples: 
	    |passo	|pergunta							      				  		|retornoBia            																					|feedback                     				   	|
	    |1		|Como contratar um empréstimo?									|empréstimo parcelado;limite de crédito pessoal;consignado												|ignorar									   	|
	        
	  Scenario Outline:	01.27 - Validar Resposta da Pergunta - Como antecipar o 13º salário?
		Given configurar telefone no filtro por numero "553488896714" e "true"
		Given limpar contexto da conta <passo> "553488896714"
		When envio da mensagem "<pergunta>" no <passo>
		Then validando retorno da mensagem "<retornoBia>" e "<feedback>" e <passo>
		
		Examples: 
	    |passo	|pergunta							      				  		|retornoBia            																					|feedback                     				   	|
	    |1		|Como antecipar o 13º salário?									|disponível;Empréstimos;antecipa;autoatendimento														|ignorar									   	|
	
	  Scenario Outline:	01.28 - Validar Resposta da Pergunta - Como contratar o limite de crédito pessoal?
		Given configurar telefone no filtro por numero "553488896714" e "true"
		Given limpar contexto da conta <passo> "553488896714"
		When envio da mensagem "<pergunta>" no <passo>
		Then validando retorno da mensagem "<retornoBia>" e "<feedback>" e <passo>
		
		Examples: 
	    |passo	|pergunta							      				  		|retornoBia            																					|feedback                     				   	|
	    |1		|Como contratar o limite de crédito pessoal?					|limite;disponível;Pessoal																				|ignorar									   	|

	  Scenario Outline:	01.29 - Validar Resposta da Pergunta - Como cadastrar o cheque especial?
		Given configurar telefone no filtro por numero "553488896714" e "true"
		Given limpar contexto da conta <passo> "553488896714"
		When envio da mensagem "<pergunta>" no <passo>
		Then validando retorno da mensagem "<retornoBia>" e "<feedback>" e <passo>
		
		Examples: 
	    |passo	|pergunta							      				  		|retornoBia            																					|feedback                     				   	|
	    |1		|Como cadastrar o cheque especial?								|cadastrar o cheque especial;Internet Banking;Autoatendimento											|ignorar									   	|

	  Scenario Outline:	01.30 - Validar Resposta da Pergunta - Como renegociar uma dívida?
		Given configurar telefone no filtro por numero "553488896714" e "true"
		Given limpar contexto da conta <passo> "553488896714"
		When envio da mensagem "<pergunta>" no <passo>
		Then validando retorno da mensagem "<retornoBia>" e "<feedback>" e <passo>
		
		Examples: 
	    |passo	|pergunta							      				  		|retornoBia            																					|feedback                     				   	|
	    |1		|Como renegociar uma dívida?									|renegociar;suas dívidas;no link																		|ignorar									   	|

	  Scenario Outline:	01.31 - Validar Resposta da Pergunta - O que é e como usar o cheque especial?
		Given configurar telefone no filtro por numero "553488896714" e "true"
		Given limpar contexto da conta <passo> "553488896714"
		When envio da mensagem "<pergunta>" no <passo>
		Then validando retorno da mensagem "<retornoBia>" e "<feedback>" e <passo>
		
		Examples: 
	    |passo	|pergunta							      				  		|retornoBia            																					|feedback                     				   	|
	    |1		|O que é e como usar o cheque especial?							|limite de crédito;sua conta-corrente;cobrir gastos														|ignorar									   	|

	  Scenario Outline:	01.32 - Validar Resposta da Pergunta - Como contratar o financiamento de veículo?
		Given configurar telefone no filtro por numero "553488896714" e "true"
		Given limpar contexto da conta <passo> "553488896714"
		When envio da mensagem "<pergunta>" no <passo>
		Then validando retorno da mensagem "<retornoBia>" e "<feedback>" e <passo>
		
		Examples: 
	    |passo	|pergunta							      				  		|retornoBia            																					|feedback                     				   	|
	    |1		|Como contratar o financiamento de veículo?						|contate sua agência;CRV;características do veículo														|ignorar									   	|

 	  Scenario Outline:	01.33 - Validar Resposta da Pergunta - O que é e como contratar crédito consignado?
		Given configurar telefone no filtro por numero "553488896714" e "true"
		Given limpar contexto da conta <passo> "553488896714"
		When envio da mensagem "<pergunta>" no <passo>
		Then validando retorno da mensagem "<retornoBia>" e "<feedback>" e <passo>
		
		Examples: 
	    |passo	|pergunta							      				  		|retornoBia            																					|feedback                     				   	|
	    |1		|O que é e como contratar crédito consignado?					|crédito;consignado;taxas;disponível;limite;pessoal									|ignorar				   						|

	  Scenario Outline:	01.34 - Validar Resposta da Pergunta - Como abrir conta de pessoa jurídica?
		Given configurar telefone no filtro por numero "553488896714" e "true"
		Given limpar contexto da conta <passo> "553488896714"
		When envio da mensagem "<pergunta>" no <passo>
		Then validando retorno da mensagem "<retornoBia>" e "<feedback>" e <passo>
		
		Examples: 
	    |passo	|pergunta							      				  		|retornoBia            																					|feedback                     				   	|
	    |1		|Como abrir conta de pessoa jurídica?							|Se você for MEI;abrir sua conta;App Bradesco;Abra sua conta											|ignorar				   						|

	  Scenario Outline:	01.35 - Validar Resposta da Pergunta - O que é o Bradesco Net Empresa?
		Given configurar telefone no filtro por numero "553488896714" e "true"
		Given limpar contexto da conta <passo> "553488896714"
		When envio da mensagem "<pergunta>" no <passo>
		Then validando retorno da mensagem "<retornoBia>" e "<feedback>" e <passo>
		
		Examples: 
	    |passo	|pergunta							      				  		|retornoBia            																					|feedback                     				   	|
	    |1		|O que é o Bradesco Net Empresa?								|canal;pessoa jurídica;movimentações;transações bancárias												|ignorar				   						|

	  Scenario Outline:	01.36 - Validar Resposta da Pergunta - O que é Fundação Bradesco?
		Given configurar telefone no filtro por numero "553488896714" e "true"
		Given limpar contexto da conta <passo> "553488896714"
		When envio da mensagem "<pergunta>" no <passo>
		Then validando retorno da mensagem "<retornoBia>" e "<feedback>" e <passo>
		
		Examples: 
	    |passo	|pergunta							      				  		|retornoBia            																					|feedback                     				   	|
	    |1		|O que é Fundação Bradesco?										|projeto social;sem fins lucrativos;nasceu em 1956														|ignorar				   						|
	  
 	  Scenario Outline:	01.37 - Validar Resposta da Pergunta - Quais os documentos necessários para abertura de conta pessoa jurídica?
		Given configurar telefone no filtro por numero "553488896714" e "true"
		Given limpar contexto da conta <passo> "553488896714"
		When envio da mensagem "<pergunta>" no <passo>
		Then validando retorno da mensagem "<retornoBia>" e "<feedback>" e <passo>
		
		Examples: 
	    |passo	|pergunta							      				  					|retornoBia            																		|feedback                     				   	|
	    |1		|Quais os documentos necessários para abertura de conta pessoa jurídica?	|CNPJ;Estatuto Social;mínimo de associados													|ignorar										|

	  Scenario Outline:	01.38 - Validar Resposta da Pergunta - O que é Bradesco Private?
		Given configurar telefone no filtro por numero "553488896714" e "true"
		Given limpar contexto da conta <passo> "553488896714"
		When envio da mensagem "<pergunta>" no <passo>
		Then validando retorno da mensagem "<retornoBia>" e "<feedback>" e <passo>
		
		Examples: 
	    |passo	|pergunta							      				  					|retornoBia            																		|feedback                     				   	|
	    |1		|O que é Bradesco Private?													|um segmento;Wealth Management;soluções personalizada;										|ignorar										|
	
      Scenario Outline:	01.40 - Validar Resposta da Pergunta - Como localizar a máquina de autoatendimento mais próxima pelo aplicativo?
		Given configurar telefone no filtro por numero "553488896714" e "true"
		Given limpar contexto da conta <passo> "553488896714"
		When envio da mensagem "<pergunta>" no <passo>
		Then validando retorno da mensagem "<retornoBia>" e "<feedback>" e <passo>
		
		Examples: 
	    |passo	|pergunta							      				  					|retornoBia            																		|feedback                     				   	|
	    |1		|Como localizar a máquina de autoatendimento mais próxima pelo aplicativo?	|Rede de Atendimento;Máquinas de Autoatendimento;Próximas a mim								|ignorar										|

	  Scenario Outline:	01.41 - Validar Resposta da Pergunta - É possível fazer depósito em moeda estrangeira?
		Given configurar telefone no filtro por numero "553488896714" e "true"
		Given limpar contexto da conta <passo> "553488896714"
		When envio da mensagem "<pergunta>" no <passo>
		Then validando retorno da mensagem "<retornoBia>" e "<feedback>" e <passo>
		
		Examples: 
	    |passo	|pergunta							      				  					|retornoBia            																		|feedback                     				   	|
	    |1		|É possível fazer depósito em moeda estrangeira?							|legislação vigente;não é possível;moeda estrangeira										|ignorar										|

	  Scenario Outline:	01.43 - Validar Resposta da Pergunta - Como cadastrar a senha da chave de segurança no celular?
		Given configurar telefone no filtro por numero "553488896714" e "true"
		Given limpar contexto da conta <passo> "553488896714"
		When envio da mensagem "<pergunta>" no <passo>
		Then validando retorno da mensagem "<retornoBia>" e "<feedback>" e <passo>
		
		Examples: 
	    |passo	|pergunta							      				  					|retornoBia            																		|feedback                     				   	|
	    |1		|Como cadastrar a senha da chave de segurança no celular?					|cadastrar;Autoatendimento;Banco24Horas;Fone Fácil;Chave;Segurança									|ignorar										|

	  Scenario Outline:	01.44 - Validar Resposta da Pergunta - Como cadastrar a senha dos Canais Digitais pelo Internet Banking?
		Given configurar telefone no filtro por numero "553488896714" e "true"
		Given limpar contexto da conta <passo> "553488896714"
		When envio da mensagem "<pergunta>" no <passo>
		Then validando retorno da mensagem "<retornoBia>" e "<feedback>" e <passo>
		
		Examples: 
	    |passo	|pergunta							      				  					|retornoBia            																		|feedback                     				   	|
	    |1		|Como cadastrar a senha dos Canais Digitais pelo Internet Banking?			|Como Usar;Senhas e Dispositivos de Segurança;Senha de 4 Dígitos;Cadastre Agora				|ignorar										|

 	  Scenario Outline:	01.50 - Validar Resposta da Pergunta - Como correntista Bradesco pode investir?
		Given configurar telefone no filtro por numero "553488896714" e "true"
		Given limpar contexto da conta <passo> "553488896714"
		When envio da mensagem "<pergunta>" no <passo>
		Then validando retorno da mensagem "<retornoBia>" e "<feedback>" e <passo>
		
		Examples: 
	    |passo	|pergunta							      				  					|retornoBia            																		|feedback                     				   	|
	    |1		|Como correntista Bradesco pode investir?									|perfil de investidor;carteira de investimentos;App Bradesco								|ignorar										|

      Scenario Outline:	01.52 - Validar Resposta da Pergunta - O que é CDI?
		Given configurar telefone no filtro por numero "553488896714" e "true"
		Given limpar contexto da conta <passo> "553488896714"
		When envio da mensagem "<pergunta>" no <passo>
		Then validando retorno da mensagem "<retornoBia>" e "<feedback>" e <passo>
		
		Examples: 
	    |passo	|pergunta							      				  					|retornoBia            																		|feedback                     				   	|
	    |1		|O que é CDI?																|Certificado de Depósito Interfinanceiro;bancos emprestem;peguem dinheiro					|ignorar										|

	  Scenario Outline:	01.54 - Validar Resposta da Pergunta - O que é Tesouro Direto?
		Given configurar telefone no filtro por numero "553488896714" e "true"
		Given limpar contexto da conta <passo> "553488896714"
		When envio da mensagem "<pergunta>" no <passo>
		Then validando retorno da mensagem "<retornoBia>" e "<feedback>" e <passo>
		
		Examples: 
	    |passo	|pergunta							      				  					|retornoBia            																		|feedback                     				   	|
	    |1		|O que é Tesouro Direto?													|programa do Governo;comprar títulos públicos;boa rentabilidade;pouco risco					|ignorar										|

	  Scenario Outline:	01.56 - Validar Resposta da Pergunta - O que é biometria por voz?
		Given configurar telefone no filtro por numero "553488896714" e "true"
		Given limpar contexto da conta <passo> "553488896714"
		When envio da mensagem "<pergunta>" no <passo>
		Then validando retorno da mensagem "<retornoBia>" e "<feedback>" e <passo>
		
		Examples: 
	    |passo	|pergunta							      				  					|retornoBia            																		|feedback                     				   	|
	    |1		|O que é biometria por voz?													|reconhecer sua identidade;pela sua voz;seguro;agilidade;transações							|ignorar										|
	
	 Scenario Outline:	01.57 - Validar Resposta da Pergunta - O que é chocolate?
		Given configurar telefone no filtro por numero "553488896714" e "true"
		Given limpar contexto da conta <passo> "553488896714"
		When envio da mensagem "<pergunta>" no <passo>
		Then validando retorno da mensagem "<retornoBia>" e "<feedback>" e <passo>
		
		Examples: 
	    |passo	|pergunta							      				  					|retornoBia            																		|feedback                     				   	|
	    |1		|O que é chocolate?															|eu ainda não sei tudo;estou aprendendo;com você											|ignorar										|
	
	Scenario Outline:	01.58 - Validar Resposta da Pergunta - BIA, você gosta de chicória?
		Given configurar telefone no filtro por numero "553488896714" e "true"
		Given limpar contexto da conta <passo> "553488896714"
		When envio da mensagem "<pergunta>" no <passo>
		Then validando retorno da mensagem "<retornoBia>" e "<feedback>" e <passo>
		
		Examples: 
	    |passo	|pergunta							      				  					|retornoBia            																		|feedback                     				   	|
	    |1		|BIA, você gosta de chicória?												|ajudar as pessoas;aprendendo;																|ignorar										|
	