require 'spec_helper'
feature "Viewing projects" do
  scenario "Listing all projects" do
    project = create(:project)
    visit '/'
    click_link "Send and store"
    expect(page.current_url).to eql(project_url(project))
end end
