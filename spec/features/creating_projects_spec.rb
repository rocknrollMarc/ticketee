require "spec_helper"

before do
  sign_in_as!(FactoryGirl.create(:admin_user))
end

feature 'Creating Projects' do
  scenario "can create projects" do
    visit "/"

    click_link 'New Project'

    fill_in 'Name', with: 'Send and store'
    fill_in 'Description', with: 'An online storage app'
    click_button 'Create Project'

    expect(page).to have_content('Project has been created.')
  end
end
