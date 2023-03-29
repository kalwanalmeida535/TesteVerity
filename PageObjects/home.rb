require 'capybara/dsl'
include Capybara::DSL

class Home  
    include RSpec::Matchers
    
    def find_solutions
        expect(page).to have_css('span[style="font-size:45px;"]', 
        text: 'Nossas soluções')
    end


end