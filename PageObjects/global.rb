require 'capybara/dsl'
include Capybara::DSL

class GoHome  
    include RSpec::Matchers
    
    def self.go_home
        visit "https://www.verity.com.br"
    end

end