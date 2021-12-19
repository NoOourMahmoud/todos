require "rails_helper"

feature "User completes todo" do
	scenario "successfully" do
		sign_in

		click_on "Add a new todo"
		fill_in "Title", with: "Buy milk"
		click_on "Submit"

    within ".todos" do
      click_on "Mark Complete", match: :first
    end
    

		expect(page).to have_css ".todos li.completed", text: "Buy milk"
	end
end