# encoding: utf-8

Dado(/^que eu esteja no site do walmart$/) do
  @navegador = Selenium::WebDriver.for :firefox
  @navegador.manage.window.maximize
  @navegador.manage.timeouts.implicit_wait = 5
  @navegador.get 'https://www.walmart.com.br/'
end

Dado(/^realize uma busca pelo produto tv$/) do
  @navegador.find_element(:id, "suggestion-search").clear
  @navegador.find_element(:id, "suggestion-search").send_keys "tv"
  @navegador.find_element(:css, "button.search-icon").click
end

Dado(/^verei resultados de TVs$/) do
  (@navegador.find_element(:css, "h1.search-title").text).should == "Resultados de busca para \"tv\""
end

Dado(/^clicar no produto escolhido$/) do
  #require 'pry';binding.pry
  !15.times{ break if (element_present?(:css, "(li.shelf-item:nth-child(2) div:nth-child(2) a:nth-child(1) span:nth-child(1)") rescue false); sleep 1 }
  @navegador.find_element(:css, "li.shelf-item:nth-child(2) div:nth-child(2) a:nth-child(1) span:nth-child(1)").click
end

Dado(/^adicionar produto no carrinho$/) do
  sleep 2
  @navegador.find_element(:xpath, "(//button[@type='button'])[2]").click
end


Dado(/^escolher garantia extendida$/) do
  sleep 1
  @navegador.find_element(:id, "navegaCarrinho").click
end

Quando(/^acessar o carrinho$/) do
  @navegador.find_element(:css, "span.cart-icon").click
end

Entao(/^valide que o produto esta no carrinho$/) do

end

