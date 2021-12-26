require "rails_helper"

feature "User completes todo" do
	scenario "successfully" do
		sign_in

		create_todo "Buy milk"

    within ".todos" do
      click_on "Mark Complete", match: :first
    end
    

		expect(page).to display_completed_todo "Buy milk"
	end
  
end