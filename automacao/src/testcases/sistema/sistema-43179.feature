#Auto generated Octane revision tag
@TID43179REV0.2.0
Feature: Funcionalidade para verificar POST API

  Scenario Outline: Verifique se o usuario pode enviar uma solicitacao POST
    Given que eu quero executar um servico no ambiente
    When envio a solicitacao POST "<url>"
    Then valido o endpoint existe <status> do caso de teste "<nome>"
    
    Examples: 
      | status | url		     			 		| nome               |
      |  404   | api/whatsapp/v1/backend/callback	| backend/callback	 |
