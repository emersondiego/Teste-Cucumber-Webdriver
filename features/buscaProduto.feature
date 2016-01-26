 # language: pt

Funcionalidade: Realizar busca de produto
  Qualquer pessoa com acesso ao site
  E com login no sistema

Cenário: Validação de produto no carrinho

  Dado que eu esteja no site do walmart
    E realize uma busca pelo produto tv
    E verei resultados de TVs
    E clicar no produto escolhido
    E adicionar produto no carrinho
    E escolher garantia extendida
  Quando acessar o carrinho
  Entao valide que o produto esta no carrinho

