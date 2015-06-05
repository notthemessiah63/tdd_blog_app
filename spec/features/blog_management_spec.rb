require 'rails_helper'

describe 'add a blog' do
  it 'a user can add a blog to the site' do
    visit '/'
    click_link 'Blog Entry'
    fill_in 'Author', with: 'Jeff Bond'
    fill_in 'Content', with: 'My first blog entry'
    click_button 'Submit'

    expect(page).to have_content 'Jeff Bond'
  end
end