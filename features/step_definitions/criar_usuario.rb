Quando('eu cadastro meu usuário') do
    user.load
    user.preencher_usuario
    sleep(4)
  end
  
  Entao('eu verifico se o usuario foi cadastrado') do
    @texto = find('#notice')
    expect(@texto.text).to eql 'Usuário Criado com sucesso'
  end