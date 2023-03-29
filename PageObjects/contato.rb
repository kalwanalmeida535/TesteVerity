require 'capybara/dsl'
include Capybara::DSL

class MakeContact
    puts $LOAD_PATH

    def initialize
        @nome = 'kalwan'
        @email = 'kalwan535@gmail.com'
        @telefone = '11941451299'
        @mensagem = 'Realizando o teste de Qa com ruby'
    end

    def self.go_home
        visit "https://www.verity.com.br"
    end

    def self.close_banner
        find('.UFLd32').click
    end

    def contact
        find('#comp-kevyodnk5label').click
    end

    def accept_messages
        find('label[data-testid="checkbox"]').click
    end

    def send_contact 
        find('#comp-kwz6tqhd > button').click
    end

    def recaptcha_click
        find(:xpath, '//*[@id="recaptcha-anchor"]', visible: false).click
    end

    def send_name
        fill_in 'input_comp-kwz6tqej', with: @nome
    end

    def send_email
        fill_in 'input_comp-kwz6tqf7', with: @email
    end

    def send_number
        fill_in 'input_comp-kwz6tqfe', with: @telefone
    end

    def send_message
        fill_in 'textarea_comp-kwz6tqfr', with: @mensagem 
    end


end

