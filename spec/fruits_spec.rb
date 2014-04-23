require 'spec_helper'

feature 'Fruits' do
  scenario 'user can create fruits' do
    visit '/'
    click_on 'Add Fruit'
    fill_in 'name', with: 'banana'
    click_on 'Add'
    expect(page).to have_content('Name: banana')
    click_on 'Edit Fruit'
    fill_in 'edit_name', with: 'apple'
    click_on 'Update'
    expect(page).to have_content('Name: apple')
    click_on 'Delete'
    expect(page).to_not have_content('apple')
  end
end


