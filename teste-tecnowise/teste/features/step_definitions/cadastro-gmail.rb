# encoding: utf-8

# =======CONTEXTO=======
Dado("eu acesse a página fakenamegenerator.com que gera dados fictícios de pessoas") do
    @fake_name.load_fake
end

Dado("armazene essas informações geradas") do
    @fake_name.country("Male", "Hobbit", "Brazil")
    @fake_name.generate_button
    # gera e separa nome do sobrenome
    $first_name = @fake_name.name
    $last_name = @fake_name.last_name
end

Quando("eu iniciar um cadastro no gmail com as informações geradas") do
    # carrega pagina google
    @google_account.load_google

    # insere nome
    @google_account.cad_nome($first_name, $last_name)
end

# =======cadastrar nova conta no gmail com número de telefone invalido do Brasil=======
Quando("preencher com o número de telefone inválido do Brasil") do
    @google_account.cad_tel("+55", "911111111")
end

Entao("ao finalizar o cadastro com ddd do Brasil eu devo visualizar a mensagem {string}") do |string|
    expect(page).to have_content 'Este formato de número de telefone não é válido. Verifique o país e o número.'
end

# =======cadastrar nova conta no gmail com número de telefone invalido da Espanha=======
Quando("preencher com o número de telefone inválido da Espanha") do
    @google_account.cad_tel("+34", "911111111")
end

Entao("ao finalizar o cadastro com ddd da Espanha eu devo visualizar a mensagem {string}") do |string|
    expect(page).to have_content 'Este número de telefone foi utilizado demasiadas vezes.'
end

# =======cadastrar nova conta no gmail com número de telefone invalido da Noruega=======
Quando("preencher com o número de telefone inválido da Noruega") do
    @google_account.cad_tel("+47", "911111111")
end

Entao("ao finalizar o cadastro com ddd da Noruega eu devo visualizar a mensagem {string}") do |string|
    expect(page).to have_content 'Este formato de número de telefone não é válido. Verifique o país e o número.'
end