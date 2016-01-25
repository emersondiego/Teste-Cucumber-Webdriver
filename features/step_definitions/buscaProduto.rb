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

Dado(/^verei a mensagem TV encontrada$/) do
  (@navegador.find_element(:css, "h1.search-title").text).should == "Resultados de busca para \"tv\""
end

Quando(/^clicar em Add ao carrinho o produto$/) do
  !30.times{ break if (element_present?(:xpath, "(//button[@type='button'])[5]") rescue false); sleep 1 }
  @driver.find_element(:xpath, "(//button[@type='button'])[5]").click
end

Então(/^verei o detalhes do produto$/) do
  pending # Write code here that turns the phrase above into concrete actions
end
