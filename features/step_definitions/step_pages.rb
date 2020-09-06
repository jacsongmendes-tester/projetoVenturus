Given ("Acesso ao Site da aplicação") do
    @Pages.acessarPagina
end

When ("Devo digitar Login e senha com o parametros:") do |param|
    args = param.hashes.first
    @Pages.digitarFormLogin(args["user"], args["password"])
end

When ("Clico no botao Log in") do     
    @Pages.clicarLogin
end

And ("Devo verificar se usuario foi logado com sucesso") do |param|
    args = param.hashes.first
    @Pages.validarUsuarioLogado(args["username"])
end

And ("Devo realizar Logout") do 
    @Pages.realizarLogout
end

And ("Acesso a {string} com Formulario Horizontal") do |page,param|
    args = param.hashes.first
    @Pages.navegarPaginas(page, args["formType"])
end

And ("Acesso a {string}") do |page|
    @Pages.navegarEntrePaginas(page)
end

Then ("Digite nome completo") do |param|
    args = param.hashes.first
       @Pages.digitarNome(args["name"])
end

And ("Devo selecionar oum país existente") do |param|
    args = param.hashes.first
       @Pages.selecionarPais(args["country"])
end

Then ("Devo selecionar uma cor existente") do |param|
    args = param.hashes.first
       @Pages.selecionarCor(args["color"])
end

Then ("Devo selecionar uma Estado e Cidade existente") do |param|
    args = param.hashes.first
       @Pages.selecionarCidade(args["city"])
end


Then ("Devo selecionar uma data:") do |param|
    args = param.hashes.first
    @Pages.selecionarData(args["date"])
end

Then ("Devo escolher numero de 1 a 20") do |param|
    args = param.hashes.first
       @Pages.selecionarSlide(args["number"])
end

And ("clico em switch") do 
    @Pages.clicarSwitch
end

And ("Devo digitar um texto para descricao") do |param|
    args = param.hashes.first
       @Pages.digitarTexto(args["text"])
end


And ("Devo verificar se mensagem de erro exibida") do  |param|
    args = param.hashes.first
    @Pages.validarMsgErro(args["msg"])
end


When ("Clique em {string} e valide se a pagina foi carregada") do |pagina|
    @Pages.paginasNavegacao(pagina)
end


Then("Devo validar dados existentes na tabela") do |param|
    args = param.hashes.first
    result = @Pages.pesquisarTabela(args["name"])
    expect(result).to have_text args["borrow"]
    expect(result).to have_text args["repayment"]
end

Then("Devo validar ordem Alfabetica") do |param|
    args = param.hashes.first
    result = @Pages.pesquisarTabelaFirstName(args["firstname"])
    expect(result).to have_text args["firstname"]
end








