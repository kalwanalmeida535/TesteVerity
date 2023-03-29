require_relative '../PageObjects/contato'
require 'pry'

  describe 'Contato', :teste2 do
    before(:each) do
      MakeContact.go_home
      MakeContact.close_banner
    end

    it 'realizar contato' do
      contato = MakeContact.new
      contato.contact
      contato.send_name
      contato.send_email
      contato.send_number
      contato.send_message
      contato.accept_messages
      contato.send_contact
      binding.pry
      expect(page).to have_selector('h2[data-testid="title"]', text: 'Verificação')
      contato.recaptcha_click
     

      sleep 5
      
    end
  end
