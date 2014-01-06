require 'spec_helper'

describe User do
  	it "has a valid factory" do
		expect(FactoryGirl.build(:user)).to be_valid
	end

	it "is valid with a name, email, age, location, password, and password_confirmation" do
		user = User.new(
			name: 'Aaron',
			email: 'tester@example.com',
			age: 25,
			location: 'New York',
			password: 'password',
	    password_confirmation: 'password')
		expect(user).to be_valid
	end

	# it "is invalid without a name" do
	# 	user = FactoryGirl.build(:user, name: nil)
	# 	expect(user).to have(1).errors_on(:name)
	# end
	
	it "is invalid without an email address" do
		user = FactoryGirl.build(:user, email: nil)
		expect(user).to have(2).errors_on(:email)
	end

	# it "is invalid without a location" do
	# 	user = FactoryGirl.build(:user, location: nil)
	# 	expect(user).to have(1).errors_on(:location)
	# end

	it "is invalid with a duplicate email address" do
		FactoryGirl.create(:user, email: "aaron@example.com")
		user = FactoryGirl.build(:user, email: "aaron@example.com")
		expect(user).to have(2).errors_on(:email)
	end

	# describe "#send_confirmation_email" do

 #    it "delivers email to user" do
 #    	user = FactoryGirl.build(:user)
 #      user.send_confirmation_email
 #      last_email.to.should include(user.email)
 #    end
 #  end

end
