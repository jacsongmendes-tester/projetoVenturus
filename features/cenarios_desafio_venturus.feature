Feature: Cenarios do Desafio Venturus
   
    Background: Acesso o site 
        Given Acesso ao Site da aplicação 
        @TC-001
        Scenario Outline: Realizar Login e Validar
            Then Devo digitar Login e senha com o parametros:
                | user     | password |
                | testuser | pl123    |
            Then Clico no botao Log in
            And  Devo verificar se usuario foi logado com sucesso
                | username   |
                | <username> |
        Examples:
            | username  |
            | Test User |
            
        @TC-002
        Scenario Outline: Realizar Login com dados incorretos 
            Then Devo digitar Login e senha com o parametros:
                | user   | password   |
                | <user> | <password> |
            Then Clico no botao Log in
            And  Devo verificar se mensagem de erro exibida
                | msg   |
                | <msg> |
        Examples:
            |  user       |  password | msg                                                         |
            | testuser    | pl1234    | There was a problem logging in: Login/Password is incorrect |
            | testuser123 | pl123     | There was a problem logging in: Login/Password is incorrect |
        
        @TC-003
        Scenario: Realizar Logout
        Then Devo digitar Login e senha com o parametros:
            | user     | password |
            | testuser | pl123    |
        Then Clico no botao Log in

        @TC-004
        Scenario Outline: Cadastro Formulario
            Then Devo digitar Login e senha com o parametros:
                | user     | password  |
                | testuser | pl123     |
            Then Clico no botao Log in
            When Acesso a "Page 2" com Formulario Horizontal
                | formType   |  
                | <formType> |
            Then Digite nome completo 
                | name   |
                | <name> | 
            Then Devo selecionar oum país existente
                | country   |
                | <country> | 
            Then Devo selecionar uma cor existente
                | color   |
                | <color> |             
            Then Devo selecionar uma Estado e Cidade existente
                | city   |
                | <city> |
            Then Devo selecionar uma data:
                | date   | 
                | <date> |
            Then Devo escolher numero de 1 a 20 
                | number   | 
                | <number> |
            And clico em switch 
            And Devo digitar um texto para descricao
                | text   | 
                | <text> |
        Examples:
            | name                 | country | color | city       | date   | number | text                 | formType    |
            | Jacson Gomes Mendes  | Brazil  | Blue  |  São Paulo | today  | 13     | Texto para validaçao | Vertical    |
            | Jacson Gomes Mendes  | Brazil  | Blue  |  São Paulo |today   | 13     | Texto para validaçao | Horizontal  |
            | Jacson Gomes Mendes  | Brazil  | Blue  |  São Paulo | today  | 13     | Texto para validaçao | In line     |
  
        @TC-005
        Scenario Outline:  Validar Paginas do Menu da Page 3
            Then Devo digitar Login e senha com o parametros:
                | user     | password |
                | testuser | pl123    |
            Then Clico no botao Log in
            When Acesso a "Page 3" 
            When Clique em "Page 3" e valide se a pagina foi carregada
        Examples:
            | username  |
            | Test User |

        @TC-006
        Scenario Outline: Validando dados na Tabela
            Then Devo digitar Login e senha com o parametros:
                | user     | password |
                | testuser | pl123    |
            Then Clico no botao Log in
            When Acesso a "Page 1" 
            Then Devo validar dados existentes na tabela        
                | name  | borrow  | repayment   |
                | <name>| <borrow>| <repayment> | 
        Examples:
            | username  | name           | borrow | repayment |
            | Test User | Willard Medina | 728    |   451     | 

        @TC-007
        Scenario Outline: Validando Ordem Alfabetica da Tabela
            Then Devo digitar Login e senha com o parametros:
                | user     | password |
                | testuser | pl123    |
            Then Clico no botao Log in
            When Acesso a "Page 1" 
            Then Devo validar ordem Alfabetica        
                | firstname  | 
                | <name>     | 
        Examples:
            | username  | name         | 
            | Test User | Byron Hansen | 