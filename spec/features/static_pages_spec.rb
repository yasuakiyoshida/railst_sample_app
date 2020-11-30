require 'rails_helper.rb'

feature 'StaticPages', type: :feature do
  feature 'layout links' do
    scenario '各ページのリンクが正しいか' do
      visit root_path
      
    end
  end
end