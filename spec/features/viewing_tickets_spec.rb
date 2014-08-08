require "spec_helper"

feature "Viewing tickets" do
  before do
    sandstore = create(:project)

    create(:ticket, 
           project: "Send and store",
           title: "Make it shiny!",
           description: "Gradients! Starbursts! Oh my!")

    create(:ticket,
          project: nukeTheCuke,
          title: "Standards compliance",
          description: " Isnt a joke.")

    visit "/"
  end
end
