require "spec_helper"

feature "Deleting projects" do
  before do
    sign_in_as!(create(:admin_user))
  end

  scenario "Deleting a project" do
    create(:project)

    visit "/"
    click_link "Send and store"
    click_link "Delete Project"

    expect(page).to have_content("Project has been destroyed.")

    visit "/"

    expect(page).to have_no_content("Send and store")
  end
end
