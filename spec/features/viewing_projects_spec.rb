require 'spec_helper'

feature 'Viewing Projects' do
  scenario 'Listing all Projects' do
    project = create(:project, name: "Textmate 2")

    visit '/'
    click_link 'Textmate 2'
    expect(page.current_url).to eql(project_url(project)) 
  end
end
