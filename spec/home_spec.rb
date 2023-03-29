require_relative '../PageObjects/contato'
require_relative '../PageObjects/global'

require 'pry'

  describe 'Contato', :teste do
    before(:each) do
      GoHome.go_home
      MakeContact.close_banner
    end

    it 'Validação de textos' do
        expect(page).to have_css('span[style="font-size:45px;"]', 
        text: 'Nossas soluções')
    end
  end
