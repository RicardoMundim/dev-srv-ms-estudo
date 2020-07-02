#Auto generated Octane revision tag
@TID51352REV0.5.0
Feature: Teste Funcional Indices Financeiros Whatsapp

	Background:
		Given configurar url da api
		
	 Scenario Outline:	01 - Papéis Bradesco BBDC3 - Validar solicitação de indice papeis Bradesco BBDC3.   
		Given configurar telefone no filtro por numero "553488896714" e "true"
		Given limpar contexto da conta <passo> "553488896714"
		When envio da mensagem "<pergunta>" no <passo>
		Then validando retorno da mensagem "<retornoBia>" e "<feedback>" e <passo>
		
		Examples: 
	    |passo	|pergunta							      				  |retornoBia            				|feedback         			   |
	    |1		|Papeis do Bradesco BBDC3						 	      |relação;cotação;fonte;CMA			|Te ajudei;Digite S;N para NÃO |
				
						
	Scenario Outline:	02 - Papéis Bradesco BBDC4 - Validar solicitação de indice papeis Bradesco BBDC4.
		Given configurar telefone no filtro por numero "553488896714" e "true"
		Given limpar contexto da conta <passo> "553488896714"
		When envio da mensagem "<pergunta>" no <passo>
		Then validando retorno da mensagem "<retornoBia>" e "<feedback>" e <passo>
		
		Examples: 
	    |passo	|pergunta							      				  |retornoBia            				|feedback                      |
	    |1		|Papeis do Bradesco BBDC4								  |relação;cotação;fonte				|Te ajudei;Digite S;N para NÃO |
				
				
	Scenario Outline:	03 - Cotação Dolar Turismo - Validar retorno cotação do Dolar Turismo.
		Given configurar telefone no filtro por numero "553488896714" e "true"
		Given limpar contexto da conta <passo> "553488896714"
		When envio da mensagem "<pergunta>" no <passo>
		Then validando retorno da mensagem "<retornoBia>" e "<feedback>" e <passo>
		
		Examples: 
	    |passo	|pergunta							      				  |retornoBia            				|feedback                      |
	    |1		|Cotação do dolar								 	      |turismo;comercial;qual				|ignorar 					   |
		|2		|Turismo												  |turismo;fechou;dólar					|Te ajudei;Digite S;N para NÃO |
		
		
	Scenario Outline:	04 - Cotação Dolar Comercial - Validar retorno cotação do Dolar Comercial.
		Given configurar telefone no filtro por numero "553488896714" e "true"
		Given limpar contexto da conta <passo> "553488896714"
		When envio da mensagem "<pergunta>" no <passo>
		Then validando retorno da mensagem "<retornoBia>" e "<feedback>" e <passo>
		
		Examples: 
	    |passo	|pergunta							      				  |retornoBia            				|feedback                      |
	    |1		|Cotação do dolar								 	      |turismo;comercial;qual				|ignorar 					   |
		|2		|Comercial												  |comercial;fechou;dólar				|Te ajudei;Digite S;N para NÃO |
	
		
	Scenario Outline:	05 - Cotação Dolar PTAX800 - Validar retorno cotação do Dolar PTAX800.
		Given configurar telefone no filtro por numero "553488896714" e "true"
		Given limpar contexto da conta <passo> "553488896714"
		When envio da mensagem "<pergunta>" no <passo>
		Then validando retorno da mensagem "<retornoBia>" e "<feedback>" e <passo>
		
		Examples: 
	    |passo	|pergunta							      				  |retornoBia            				|feedback                      |
	    |1		|Cotação do dolar								 	      |turismo;comercial;qual				|ignorar 					   |
		|2		|PTAX800												  |PTAX800;fechou;dólar					|Te ajudei;Digite S;N para NÃO |
		
		
	Scenario Outline:	06 - Papéis Bradesco BBDC3 - Validar solicitação de indice papeis Bradesco BBDC3 chamando pela ação BBDC3.
		Given configurar telefone no filtro por numero "553488896714" e "true"
		Given limpar contexto da conta <passo> "553488896714"
		When envio da mensagem "<pergunta>" no <passo>
		Then validando retorno da mensagem "<retornoBia>" e "<feedback>" e <passo>
		
		Examples: 
	    |passo	|pergunta							      				  |retornoBia            				|feedback                     	|
	    |1		|BBDC3											 	      |cotação;BBDC3;fonte					|Te ajudei;Digite S;N para NÃO 	|

	
	Scenario Outline:	07 - Papéis Bradesco BBDC4 - Validar solicitação de indice papeis Bradesco BBDC4 chamando pela ação BBDC4
		Given configurar telefone no filtro por numero "553488896714" e "true"
		Given limpar contexto da conta <passo> "553488896714"
		When envio da mensagem "<pergunta>" no <passo>
		Then validando retorno da mensagem "<retornoBia>" e "<feedback>" e <passo>
		
		Examples: 
	    |passo	|pergunta							      				  |retornoBia            				|feedback                     	 |
	    |1		|BBDC4											 	      |cotação;BBDC4;fonte					|Te ajudei;Digite S;N para NÃO 	 |

	
	Scenario Outline:	08 - Cotação Dolar Turismo - Validar retorno cotação do Dolar - Pergunta: Dolar Turismo
		Given configurar telefone no filtro por numero "553488896714" e "true"
		Given limpar contexto da conta <passo> "553488896714"
		When envio da mensagem "<pergunta>" no <passo>
		Then validando retorno da mensagem "<retornoBia>" e "<feedback>" e <passo>
		
		Examples: 
	    |passo	|pergunta							      				  |retornoBia            				|feedback              		   |
	    |1		|Dolar Turismo									 	      |turismo;variação;anterior			|Te ajudei;Digite S;N para NÃO |
		
					
	Scenario Outline:	09 - Cotação Dolar Comercial - Validar retorno cotação do Dolar - Pergunta: Dolar Comercial
		Given configurar telefone no filtro por numero "553488896714" e "true"
		Given limpar contexto da conta <passo> "553488896714"
		When envio da mensagem "<pergunta>" no <passo>
		Then validando retorno da mensagem "<retornoBia>" e "<feedback>" e <passo>
		
		Examples: 
	    |passo	|pergunta							      				  |retornoBia            				|feedback        			   |
	    |1		|Dolar Comercial 	      								  |comercial;variação;anterior			|Te ajudei;Digite S;N para NÃO |
		
					
	Scenario Outline:	10 - Cotação Dolar PTAX800 - Validar retorno cotação do Dolar - Pergunta: Dolar PTAX800
		Given configurar telefone no filtro por numero "553488896714" e "true"
		Given limpar contexto da conta <passo> "553488896714"
		When envio da mensagem "<pergunta>" no <passo>
		Then validando retorno da mensagem "<retornoBia>" e "<feedback>" e <passo>
		
		Examples: 
	    |passo	|pergunta							      				  |retornoBia            				|feedback                      |
	    |1		|Dolar PTAX800									 	      |PTAX800;relação;fonte				|Te ajudei;Digite S;N para NÃO |
		
		
	Scenario Outline:	14- Solicitação Indice IGPM - Validar retorno solicitação de IGPM mês corrente   
		Given configurar telefone no filtro por numero "553488896714" e "true"
		Given limpar contexto da conta <passo> "553488896714"
		When envio da mensagem "<pergunta>" no <passo>
		Then validando retorno da mensagem "<retornoBia>" e "<feedback>" e <passo>
		
		Examples: 
	    |passo	|pergunta							      				  |retornoBia            				|feedback                     	|
	    |1		|IGPM											 	      |mês;fonte;estava						|Te ajudei;Digite S;N para NÃO 	|
		

	Scenario Outline:	15- Solicitação Indice IGPM / Mês - Validar retorno solicitação de IGPM mês informado
		Given configurar telefone no filtro por numero "553488896714" e "true"
		Given limpar contexto da conta <passo> "553488896714"
		When envio da mensagem "<pergunta>" no <passo>
		Then validando retorno da mensagem "<retornoBia>" e "<feedback>" e <passo>
		
		Examples: 
	    |passo	|pergunta							      				  |retornoBia            				|feedback                       |
	    |1		|IGPM mês										 	      |período;comparado;mês				|Te ajudei;Digite S;N para NÃO  |	
	
	
	Scenario Outline:	16- Solicitação Indice IGPM / Ano - Validar retorno solicitação de IGPM ano informado
		Given configurar telefone no filtro por numero "553488896714" e "true"
		Given limpar contexto da conta <passo> "553488896714"
		When envio da mensagem "<pergunta>" no <passo>
		Then validando retorno da mensagem "<retornoBia>" e "<feedback>" e <passo>
		
		Examples: 
	    |passo	|pergunta							      				  |retornoBia            				|feedback                     	|
	    |1		|IGPM ano										 	      |mês;fonte;acelerando;desacelerando	|Te ajudei;Digite S;N para NÃO	|


	Scenario Outline:	22 - Papéis Bradesco BBDC Informação incompleta - Validar solicitação de indice papeis Bradesco BBDC - Entrar com informação errada ou incompleta
		Given configurar telefone no filtro por numero "553488896714" e "true"
		Given limpar contexto da conta <passo> "553488896714"
		When envio da mensagem "<pergunta>" no <passo>
		Then validando retorno da mensagem "<retornoBia>" e "<feedback>" e <passo>
		
		Examples: 
	    |passo	|pergunta							      				  |retornoBia            				|feedback                     	|
	    |1		|Cotação BBDC									 	      |te ajudar;preciso saber;consultar	|ignorar					 	|
		|2		|BBDC													  |te ajudar;preciso saber;consultar	|ignorar						|
		|3		|BBD													  |Desculpe;não consegui;te ajudar		|ignorar						|
	

	Scenario Outline:	23 - Papéis Bradesco BBDC Informação incompleta - Validar solicitação de indice papeis Bradesco BBDC - Entrar com informação errada ou incompleta
		Given configurar telefone no filtro por numero "553488896714" e "true"
		Given limpar contexto da conta <passo> "553488896714"
		When envio da mensagem "<pergunta>" no <passo>
		Then validando retorno da mensagem "<retornoBia>" e "<feedback>" e <passo>
		
		Examples: 
	    |passo	|pergunta							      				  |retornoBia            				|feedback                     	|
	    |1		|Cotação BBD									 	      |Não encontrei;moedas;você quer		|Te ajudei;Digite S;N para NÃO	|
		|2		|x														  |prometo aprender;ainda não;breve		|ignorar						|
		

	Scenario Outline:	24 - Cotação Dolar Informação errada - Validar retorno cotação do Dolar - Entrar com informação errada ou incompleta
		Given configurar telefone no filtro por numero "553488896714" e "true"
		Given limpar contexto da conta <passo> "553488896714"
		When envio da mensagem "<pergunta>" no <passo>
		Then validando retorno da mensagem "<retornoBia>" e "<feedback>" e <passo>
		
		Examples: 
	    |passo	|pergunta							      				  |retornoBia            				|feedback                     	|
	    |1		|Cotação do dolar								 	      |Qual dólar;quer saber;o valor		|ignorar					 	|
	    |2		|todos												  	  |Qual dólar;quer saber;o valor		|ignorar						|
		|3		|todos													  |Desculpe;não consegui;te ajudar		|ignorar						|

	
	Scenario Outline:	25 - Cotação Dolar Informação errada - Validar retorno cotação do Dolar - Entrar com informação errada ou incompleta
		Given configurar telefone no filtro por numero "553488896714" e "true"
		Given limpar contexto da conta <passo> "553488896714"
		When envio da mensagem "<pergunta>" no <passo>
		Then validando retorno da mensagem "<retornoBia>" e "<feedback>" e <passo>
		
		Examples: 
	    |passo	|pergunta							      				  |retornoBia            						|feedback                     	|
	    |1		|Cotação do dolar										  |Qual dólar;quer saber;o valor				|ignorar					 	|
		|2		|turis												  	  |turismo;variação;dia;anterior;CMA			|ignorar						|
		|3		|comer													  |Desculpe;não consegui;te ajudar;bradesco		|ignorar						|
