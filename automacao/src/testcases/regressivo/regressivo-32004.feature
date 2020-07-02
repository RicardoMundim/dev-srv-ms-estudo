#Auto generated Octane revision tag
@TID32004REV0.2.0
Feature: Funcionalidade para verificar Get API

  Scenario Outline: Verifique se o usuario pode enviar uma solicitacao GET
    Given que eu quero executar um servico no ambiente
    When envio a solicitacao GET
    Then valido o codigo de status <statuscode>

    Examples: 
      | statuscode |
      |        200 |
