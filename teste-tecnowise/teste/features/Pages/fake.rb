class FakeNamePage
    include Capybara::DSL
    attr_accessor :name, :first_name

    def load_fake
        visit "/"
    end

    def country(sexo, nome_pais, pais)
        # uso o valor da variavel para definir o o sexo, nome de qual pais utilizara e nacionalidade
        select(sexo, from: "gen")
        select(nome_pais, from: "n")
        select(pais, from: "c")
    end

    def name
        nome = find(".address h3").text # captura nome
        @texto = nome.split(' ') # separa nome em array
        first_name = @texto[0] # atribuindo nome da primeira posição a uma variável
        return first_name
    end

    def last_name
        last_name = @texto[1] # atribuindo nome da segunda posição a uma variável
        return last_name
    end

    def address
        address = find(".adr").text
    end

    def phone
        tel = page.find(".extra dl-horizontal").text
        puts tel
    end

    # def user
    #     @user = find(".dl dd").text
    #     puts @user
    # end

    # def pass
    # end
    
    # def country_code
    # end

    # def birth
    # end

    # def genere
    # end

    

    def generate_button
        click_button("genbtn")
    end

    def gmail_cad
        @msg = 'Este formato de número de telefone não é válido. Verifique o país e o número.'
    end
end