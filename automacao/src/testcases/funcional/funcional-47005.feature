#Auto generated Octane revision tag
@TID47005REV0.8.0
Feature: Teste Funcional do Feedback Whatsapp

	Background:
		Given configurar url da api
		
	 Scenario Outline:	01.01 - Verificar a apresentação  da frase de Feedback. Resposta  S   
		Given configurar telefone no filtro por numero "553488896714" e "true"
		Given limpar contexto da conta <passo> "553488896714"
		When envio da mensagem "<pergunta>" no <passo>
		Then validando retorno da mensagem "<retornoBia>" e "<feedback>" e <passo>
		
		Examples: 
	    |passo	|pergunta							      				  |retornoBia            				|feedback         			   |
	    |1		|Qual Chave de Segurança está cadastrada na conta? 	      |ignorar								|Te ajudei;Digite S;N para NÃO |
		|2		|S									      				  |ajudei;agradeço;avaliar				|							   |
				
				
	Scenario Outline:	01.02 - Verificar a apresentação  da frase de Feedback. Resposta  Sim   
		Given configurar telefone no filtro por numero "553488896714" e "true"
		Given limpar contexto da conta <passo> "553488896714"
		When envio da mensagem "<pergunta>" no <passo>
		Then validando retorno da mensagem "<retornoBia>" e "<feedback>" e <passo>
		
		Examples: 
	    |passo	|pergunta							      				  |retornoBia            				|feedback                      |
	    |1		|Qual Chave de Segurança está cadastrada na conta? 	      |ignorar								|Te ajudei;Digite S;N para NÃO |
		|2		|Sim								      				  |ajudei;agradeço;avaliar				|							   |
			
		
	Scenario Outline:	01.03 - Verificar a apresentação  da frase de Feedback. Resposta  SIM  (Maiusculo)
		Given configurar telefone no filtro por numero "553488896714" e "true"
		Given limpar contexto da conta <passo> "553488896714"
		When envio da mensagem "<pergunta>" no <passo>
		Then validando retorno da mensagem "<retornoBia>" e "<feedback>" e <passo>
		
		Examples: 
	    |passo	|pergunta							      				  |retornoBia            				|feedback                       |
	    |1		|Qual Chave de Segurança está cadastrada na conta? 	      |ignorar								|Te ajudei;Digite S;N para NÃO  |
		|2		|SIM									      			  |ajudei;agradeço						|								|
		
		
	Scenario Outline:	01.04 - Verificar a apresentação  da frase de Feedback. Resposta  sim  (Minusculo)
		Given configurar telefone no filtro por numero "553488896714" e "true"
		Given limpar contexto da conta <passo> "553488896714"
		When envio da mensagem "<pergunta>" no <passo>
		Then validando retorno da mensagem "<retornoBia>" e "<feedback>" e <passo>
		
		Examples: 
	    |passo	|pergunta							      				  |retornoBia            				|feedback              		   |
	    |1		|Qual Chave de Segurança está cadastrada na conta? 	      |ignorar								|Te ajudei;Digite S;N para NÃO |
		|2		|sim									      			  |ajudei;agradeço						|							   |
		
					
	Scenario Outline:	01.05 - Verificar a apresentação  da frase de Feedback. Resposta  sím  (Minusculo com acentuação no i)
		Given configurar telefone no filtro por numero "553488896714" e "true"
		Given limpar contexto da conta <passo> "553488896714"
		When envio da mensagem "<pergunta>" no <passo>
		Then validando retorno da mensagem "<retornoBia>" e "<feedback>" e <passo>
		
		Examples: 
	    |passo	|pergunta							      				  |retornoBia            				|feedback        			   |
	    |1		|Qual Chave de Segurança está cadastrada na conta? 	      |ignorar								|Te ajudei;Digite S;N para NÃO |
		|2		|sím									      			  |ajudei;agradeço						|							   |
		
					
	Scenario Outline:	01.06- Verificar a apresentação  da frase de Feedback. Resposta  Emoji Positivo
		Given configurar telefone no filtro por numero "553488896714" e "true"
		Given limpar contexto da conta <passo> "553488896714"
		When envio da mensagem "<pergunta>" no <passo>
		Then validando retorno da mensagem "<retornoBia>" e "<feedback>" e <passo>
		
		Examples: 
	    |passo	|pergunta							      				  |retornoBia            				|feedback                      |
	    |1		|Qual Chave de Segurança está cadastrada na conta? 	      |ignorar								|Te ajudei;Digite S;N para NÃO |
		|2		|\ud83d\udc4d							      			  |ainda; não uso emoji					|							   |
					
					
	Scenario Outline:	01.07- Verificar a apresentação  da frase de Feedback. Resposta  Emoji Negativo
		Given configurar telefone no filtro por numero "553488896714" e "true"
		Given limpar contexto da conta <passo> "553488896714"
		When envio da mensagem "<pergunta>" no <passo>
		Then validando retorno da mensagem "<retornoBia>" e "<feedback>" e <passo>
		
		Examples: 
	    |passo	|pergunta							      				  |retornoBia            				|feedback                      |
	    |1		|Qual Chave de Segurança está cadastrada na conta? 	      |ignorar								|Te ajudei;Digite S;N para NÃO |
		|2		|\ud83d\udc4e							      			  |ainda; não uso emoji					|							   |
		

	Scenario Outline:	01.08 - Verificar a apresentação  da frase de Feedback. Resposta  S 
		Given configurar telefone no filtro por numero "553488896714" e "true"
		Given limpar contexto da conta <passo> "553488896714"
		When envio da mensagem "<pergunta>" no <passo>
		Then validando retorno da mensagem "<retornoBia>" e "<feedback>" e <passo>
		
		Examples: 
	    |passo	|pergunta							      				  |retornoBia            				|feedback                     	|
	    |1		|Qual Chave de Segurança está cadastrada na conta? 	      |ignorar								|Te ajudei;Digite S;N para NÃO 	|
		|2		|S										      			  |ajudei;agradeço						|								|
		

	Scenario Outline:	01.09 - Verificar a apresentação  da frase de Feedback. Resposta  Sim  
		Given configurar telefone no filtro por numero "553488896714" e "true"
		Given limpar contexto da conta <passo> "553488896714"
		When envio da mensagem "<pergunta>" no <passo>
		Then validando retorno da mensagem "<retornoBia>" e "<feedback>" e <passo>
		
		Examples: 
	    |passo	|pergunta							      				  |retornoBia            				|feedback                     	|
	    |1		|Qual Chave de Segurança está cadastrada na conta? 	      |ignorar								|Te ajudei;Digite S;N para NÃO 	|
		|2		|Sim									      			  |ajudei;agradeço						|								|
		
	
	Scenario Outline:	01.10 - Verificar a apresentação  da frase de Feedback. Resposta  SIM  (Maiusculo)
		Given configurar telefone no filtro por numero "553488896714" e "true"
		Given limpar contexto da conta <passo> "553488896714"
		When envio da mensagem "<pergunta>" no <passo>
		Then validando retorno da mensagem "<retornoBia>" e "<feedback>" e <passo>
		
		Examples: 
	    |passo	|pergunta							      				  |retornoBia            				|feedback                     	|
	    |1		|Qual Chave de Segurança está cadastrada na conta? 	      |ignorar								|Te ajudei;Digite S;N para NÃO 	|
		|2		|SIM									      			  |ajudei;agradeço						|								|


	Scenario Outline:	01.11 - Verificar a apresentação  da frase de Feedback. Resposta  sim  (Minusculo)
		Given configurar telefone no filtro por numero "553488896714" e "true"
		When envio da mensagem "<pergunta>" no <passo>
		Then validando retorno da mensagem "<retornoBia>" e "<feedback>" e <passo>
		
		Examples: 
	    |passo	|pergunta							      				  |retornoBia            				|feedback                     |
	    |1		|Qual Chave de Segurança está cadastrada na conta? 	      |ignorar								|Te ajudei;Digite S;N para NÃO|
		|2		|sim									      			  |ajudei;agradeço						|								|

		
	Scenario Outline:	01.12 - Verificar a apresentação  da frase de Feedback. Resposta  sím  (Minusculo com acentuação no i)
		Given configurar telefone no filtro por numero "553488896714" e "true"
		Given limpar contexto da conta <passo> "553488896714"
		When envio da mensagem "<pergunta>" no <passo>
		Then validando retorno da mensagem "<retornoBia>" e "<feedback>" e <passo>
		
		Examples: 
	    |passo	|pergunta							      				  |retornoBia            				|feedback                     	|
	    |1		|Qual Chave de Segurança está cadastrada na conta? 	      |ignorar								|Te ajudei;Digite S;N para NÃO 	|
		|2		|sím									      			  |ajudei;agradeço						|								|