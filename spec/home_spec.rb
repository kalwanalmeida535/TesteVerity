require_relative '../PageObjects/home'
require_relative '../PageObjects/contato'

require 'pry'

  describe 'Contato', :teste do
    before(:each) do
      MakeContact.go_home
      MakeContact.close_banner
    end

    it 'Validação de textos' do
        # home = Home.new
        # home.find_solutions

        expect(page).to have_css('span[style="font-size:45px;"]', 
        text: 'Nossas soluções')

        expect(page).to have_content('Culture e Tech')

    end
  end
