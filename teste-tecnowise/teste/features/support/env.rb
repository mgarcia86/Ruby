require 'cucumber'
require 'capybara'
require 'capybara/cucumber'
require 'capybara/rspec'
require 'selenium-webdriver'
require 'faker'
require 'cpf_faker'

Capybara.configure do |config|
    # executa o selenium com o navegador chrome
    config.default_driver = :selenium_chrome#_headless
  
    # acessa a URL principal do teste
    config.app_host = 'https://www.fakenamegenerator.com'
  
    # aguarda até X segundos para encontrar um elemento
    config.default_max_wait_time = 10
  end