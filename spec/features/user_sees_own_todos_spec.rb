require "rails_helper"

feature "User sees own todos" do
	scenario "doesn't see other todos" do
		Todo.create!(title: "Buy Milk", email: "someone_else@example.com")

		sign_in_as "someone@example.com" 

    expect(page).not_to display_todo "Buy milk" 
	end
end