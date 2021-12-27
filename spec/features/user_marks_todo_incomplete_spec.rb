require "rails_helper"

feature "User completes todo incomplete" do
	scenario "successfully" do
		sign_in

		create_todo "Buy milk"

    within ".todos" do
      click_on "Mark Complete", match: :first
    end
    within ".todos" do
      click_on "Mark inComplete", match: :first
    end

		expect(page).not_to display_completed_todo "Buy milk"
    expect(page).to display_do "Buy milk"
	end
  
end