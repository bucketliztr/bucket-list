require 'spec_helper'

feature 'Create a new User and Bucket List' do
	scenario "adds a new user" do
		visit root_path
			expect{
				click_link 'Users'
				click_link 'New User'
				fill_in 'Name', with: 'John Doe'
				fill_in 'Email', with: 'newuser@example.com'
				fill_in 'Age', with: 25
				fill_in 'List Item', with: 'Learn to code.'
				click_button 'Create Bucket List'
				}.to change(User, :count).by(1)
	end
end

feature 'Update an existing User' do

end

feature 'Add items to an existing Bucket List' do

end

feature 'See all Bucket Lists' do

end