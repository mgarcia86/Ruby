#language: pt

Funcionalidade: Criar nova conta no gmail

Contexto:
    Dado eu acesse a página fakenamegenerator.com que gera dados fictícios de pessoas
    E armazene essas informações geradas
    Quando eu iniciar um cadastro no gmail com as informações geradas

@brasil
Cenario: cadastrar nova conta no gmail com número de telefone invalido do Brasil
    
    E preencher com o número de telefone inválido do Brasil
    Entao ao finalizar o cadastro com ddd do Brasil eu devo visualizar a mensagem "Este formato de número de telefone não é válido. Verifique o país e o número."

@espanha
Cenario: cadastrar nova conta no gmail com número de telefone invalido da Espanha
    
    E preencher com o número de telefone inválido da Espanha
    Entao ao finalizar o cadastro com ddd da Espanha eu devo visualizar a mensagem "Ocorreu um problema ao validar o seu número de telefone."

@noruega
Cenario: cadastrar nova conta no gmail com número de telefone invalido da Noruega
    
    E preencher com o número de telefone inválido da Noruega
    Entao ao finalizar o cadastro com ddd da Noruega eu devo visualizar a mensagem "Este formato de número de telefone não é válido. Verifique o país e o número."