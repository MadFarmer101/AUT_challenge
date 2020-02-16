require 'rails_helper'
require 'factory_bot'

feature 'Edit an article' do
    context 'Successfully edit an article [Happy Path' do
      before do
  
        create(:article, title: 'Unbelievable story', content: 'You will not believe your ears')
        visit articles_path
        click_on 'Edit'
      end
  
      it 'User should see article title' do
        expect(page).to have_content 'story'
    end
    end
  end