 # language: pt

Funcionalidade: Realizar busca de produto
  Qualquer pessoa com acesso ao site
  E com login no sistema

Cenário: Validação de produto no carrinho

  Dado que eu esteja no site do walmart
    E realize uma busca pelo produto tv
    E verei a mensagem TV encontrada
    E clicar em Add ao carrinho o produto
  Então verei o detalhes do produto

