require 'spec_helper'

feature "Home page" do
	scenario "visitor lands on home page" do
		visit root_path

		expect(page).to have_content 'Bucketliztr'
		expect(page).to have_content 'You only live once'
	end
end

feature "About page" do
	scenario "visit from nav bar link" do
		visit root_path
		
		expect(page).to_not have_content 'About'
		# expect(page).to_not have_content ''
		
		click_link 'About'

		expect(page).to have_content 'About'
		expect(page).to have_content 'Why Create a Bucket List?'
	end
end
