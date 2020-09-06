module ModuleElements
    class ElementsPage
        def self.elementoLinkPagina
          return "/"
        end
        
        #Elementos Pagina de Login 
        def self.elementoUser
            return "input[id=normal_login_username]"
        end
    
        def self.elementoPassword
            return "input[id=normal_login_password]"
        end
    
        def self.elementoBotaoLogin
            return "button[type=submit]"
        end

        #Elementos Pagina Inicial
        def self.elementoWelcome
            return "div.dashboard-container div.welcome h1"
        end
    
        def self.elementoLogout 
            return  "li.ant-dropdown-menu-item"   
        end

        def self.elementoUserIcon
            return "div.Header_CurrentUser__3T6Kp button"
        end
        
        #Elementos Formulario
        def self.elementoPages
            return "div.Header_Navigation__hRs91 a.Navigation_NavItem__2ydHa span"
        end

        def self.elementoInputText
            return "input[class=ant-input]"
        end
        
        def self.elementoSelectCountryClick1
            return "div.ant-select-selection span.ant-select-arrow"
        end 

        def self.elementoSelectCountryClick2
            return "li.ant-select-dropdown-menu-item"
        end     
        
        def  self.elementoSelectColor1
            return "div.ant-form-item-control span.ant-select"
        end
      
        def  self.elementoSelectColor2
            return "div.ant-select-dropdown span.ant-select-tree-switcher i"
        end

        def  self.elementoSelectColor3
            return "li.ant-select-tree-treenode-switcher-close"
        end

        def self.elementoSelectState1
            return "input.ant-cascader-input"
        end

        def self.elementoSelectState2
            return "ul.ant-cascader-menu li.ant-cascader-menu-item-expand"
        end

        def self.elementoSelectState3
            return "ul.ant-cascader-menu li.ant-cascader-menu-item"
        end
    
        def self.elementoSelectState4
            return "ul.ant-cascader-menu li.ant-cascader-menu-item:nth-child(2)"
        end

        def self.elementoBotaoDate1
            return "input.ant-calendar-picker-input"
        end
        
        def self.elementoBotaoDate2
            return "span.ant-calendar-footer-btn a"
        end
        def self.elementoInputDate
            return "span.ant-calendar-footer-btn a"
        end

        def self.elementoSlideButtonUp
            return "div.ant-input-number span:nth-child(1)"
        end

        def self.elementoSlideCampo
            return  "div.ant-input-number"
        end

        def self.elementoSelectForm
            return "div.ant-radio-group label.ant-radio-button-wrapper span"
        end

        def self.elementoBotaoSwitch
            return "button.ant-switch"
        end

        def  self.elementoTextArea
            return "span.ant-form-item-children textarea"
        end

        def self.elementoMsgErro
            return "div.login-page p.error-message"
        end

        def self.elementoLinksPaginas
            return "div.ant-breadcrumb span.ant-breadcrumb-link"
        end

        def self.elementoTitlePage1
            return "h1.Page1_Title__2lPiM"
        end

        def self.elementoPageNotFound
            return "div.NotFound_MainContainer__1n1oR h1"
        end

        def self.elementoTable
            return "table tbody tr"
        end
        
        def self.elementoPage3
            return "div.ant-breadcrumb span:nth-child(4)"
        end
        def self.elementoUmTable
            return "table tbody tr:nth-child(1)"
        end
        
        def self.elementoOrdem
            return "div.ant-table-column-sorter i.anticon-caret-up"
        end
    end
end
