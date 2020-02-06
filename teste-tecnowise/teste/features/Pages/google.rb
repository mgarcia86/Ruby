class GoogleAccountPage
    
    include Capybara::DSL
    # attr_accessor :nome

    # def initialize(nome)
    #     @nome = FakeNamePage.new
    # end

    # def first_name
    #     @first_name ||= fake_name_generator.nome.name 
    # end

    def load_google
        visit "https://gmail.com/mail/help/intl/pt_pt/about.html"
        find("#gmail-create-account").click
    end

    def cad_nome(first_name, last_name)
        find('#firstName').set first_name

        find("#lastName").set last_name
        find("#username").set first_name + last_name + "tecnowise"
        find("input[name='Passwd']").set 'Tecnowise20'
        find("input[name='ConfirmPasswd']").set 'Tecnowise20'
        find("#accountDetailsNext").click
        sleep 2
    end

    def cad_tel(ddd, num)
        find("#phoneNumberId").set ddd + num
        find("#gradsIdvPhoneNext").click
    end

end