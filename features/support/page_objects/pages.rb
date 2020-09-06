class Pages
    include Capybara::DSL

    def acessarPagina
        visit ModuleElements::ElementsPage.elementoLinkPagina
        textWelcome = find(ModuleElements::ElementsPage.elementoWelcome).text
        if textWelcome.include?("Hi, Test User")
            realizarLogout()
        end      
    end

    def digitarFormLogin(user,password)
        find(ModuleElements::ElementsPage.elementoUser).set user
        find(ModuleElements::ElementsPage.elementoPassword).set password
    end

    def clicarLogin
        find(ModuleElements::ElementsPage.elementoBotaoLogin).click
    end


    def validarUsuarioLogado(username)
        textWelcome = find(ModuleElements::ElementsPage.elementoWelcome).text
        if textWelcome.include?(username)
        puts "\n\n*-------- Login Realizado com sucesso -----------*\n\n"
        end      
    end
    
    def realizarLogout
        find(ModuleElements::ElementsPage.elementoUserIcon).click
        find(ModuleElements::ElementsPage.elementoLogout, text:"Logout").click
        #puts "\n\n*-------- Logout Realizado com sucesso -----------*\n\n"
    end

    def navegarPaginas(page,formType)
        if formType=="Horizontal"
            find(ModuleElements::ElementsPage.elementoPages, text:page).click
            elsif formType=="Vertical"
                find(ModuleElements::ElementsPage.elementoPages, text:page).click
                find(ModuleElements::ElementsPage.elementoSelectForm, text:formType).click
            elsif formType=="In line"
                find(ModuleElements::ElementsPage.elementoPages, text:page).click
                find(ModuleElements::ElementsPage.elementoSelectForm, text:formType).click
        end
    end
    
    def navegarEntrePaginas(page)
        find(ModuleElements::ElementsPage.elementoPages, text:page).click
    end

    def digitarNome(name)
        find(ModuleElements::ElementsPage.elementoInputText).set name
    end

    def selecionarPais(country)
        find(ModuleElements::ElementsPage.elementoSelectCountryClick1).click
        find(ModuleElements::ElementsPage.elementoSelectCountryClick2, text:country).click
    end
    
    def selecionarCor(color)
        find(ModuleElements::ElementsPage.elementoSelectColor1).click
        find(ModuleElements::ElementsPage.elementoSelectColor2).click
        find(ModuleElements::ElementsPage.elementoSelectColor3, text:color).click
    end

    def selecionarCidade(city)
        find(ModuleElements::ElementsPage.elementoSelectState1).click
        find(ModuleElements::ElementsPage.elementoSelectState2).click
        if city=="São Paulo"
            find(ModuleElements::ElementsPage.elementoSelectState4).click
            else
                find(ModuleElements::ElementsPage.elementoSelectState3, text:city).click
        end
        
    end
    
    def selecionarData(date)
        if date=="today"
           find(ModuleElements::ElementsPage.elementoBotaoDate1).send_keys :enter
           find(ModuleElements::ElementsPage.elementoBotaoDate2).click
       end
    end

    def selecionarSlide(number)
        init=0
        num=number.to_i
        num2=num - 2
        find(ModuleElements::ElementsPage.elementoSlideCampo).hover
        while init <= num2.to_i
          find(ModuleElements::ElementsPage.elementoSlideButtonUp).click
          init +=1
        end
    end
    
    def clicarSwitch  
        find(ModuleElements::ElementsPage.elementoBotaoSwitch).click
    end

    def digitarTexto(text)
        find(ModuleElements::ElementsPage.elementoTextArea).set text
    end

    def validarMsgErro(msg)
        itemCarrinho = find(ModuleElements::ElementsPage.elementoMsgErro).text
        if itemCarrinho.include?(msg)
            puts "\n\n*-------- Mensagem Erro Envida com Sucsso -----------*\n\n"
        end     
    end
    

    def paginasNavegacao(pagina)
        find(ModuleElements::ElementsPage.elementoLinksPaginas, text:pagina).click
        if pagina=="Home"
            textWelcome = find(ModuleElements::ElementsPage.elementoWelcome).text
            if textWelcome.include?("Hi, Test User")
                puts "\n\n*-------- Pagina Redirecionada com Sucesso -----------*\n\n"
            end  
            elsif pagina == "Page 1"
                textPage1 = find(ModuleElements::ElementsPage.elementoTitlePage1).text
                if textPage1.include?("Table")
                    puts "\n\n*-------- Pagina Redirecionada com Sucesso -----------*\n\n"
                end
            elsif pagina == "Page 2"
                textPage2 = find(ModuleElements::ElementsPage.elementoPageNotFound).text
                if textPage2.include?("Page Not Found")
                    puts "\n\n*-------- Pagina Redirecionada com Sucesso -----------*\n\n"
                end
            elsif pagina == "Page 3"
                textPage3 = find(ModuleElements::ElementsPage.elementoPage3).text
                if textPage3.include?("Page 3")
                    puts "\n\n*-------- Pagina Redirecionada com Sucesso -----------*\n\n"
                end
        end

    end

    def pesquisarTabela(name)
        find(ModuleElements::ElementsPage.elementoTable, text:name)
    end

    def pesquisarTabelaFirstName(firstname)
        find(ModuleElements::ElementsPage.elementoOrdem).click
        find(ModuleElements::ElementsPage.elementoOrdem).click
        find(ModuleElements::ElementsPage.elementoUmTable, text:firstname)
    end

    
end
