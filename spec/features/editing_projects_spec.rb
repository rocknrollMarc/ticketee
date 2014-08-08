require "spec_helper"

feature "Editing Projects" do
  scenario "Updating a project" do
    create(:project)

    visit "/"
    click_link "Send and store"
    click_link "Edit Project"
    fill_in "Name", with: "Send and store beta"
    click_button "Update Project"

    expect(page).to have_content("Project has been updated.")
  end
end
