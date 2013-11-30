require 'spec_helper'

describe User do
  	it "has a valid factory" do
		expect(FactoryGirl.build(:user)).to be_valid
	end

	it "is valid with a name, email, age, and location" do
		user = User.new(
			name: 'Aaron',
			email: 'tester@example.com',
			age: 25,
			location: 'New York',)
		expect(user).to be_valid
	end

	it "is invalid without a name" do
		user = FactoryGirl.build(:user, name: nil)
		expect(user).to have(1).errors_on(:name)
	end
	
	it "is invalid without an email address" do
		user = FactoryGirl.build(:user, email: nil)
		expect(user).to have(1).errors_on(:email)
	end

	it "is invalid without a location" do
		user = FactoryGirl.build(:user, location: nil)
		expect(user).to have(1).errors_on(:location)
	end

	it "is invalid with a duplicate email address" do
		FactoryGirl.create(:user, email: "aaron@example.com")
		user = FactoryGirl.build(:user, email: "aaron@example.com")
		expect(user).to have(1).errors_on(:email)
	end

	it "is valid with 1 list_item" do
		user = FactoryGirl.build(:user, list_item: "Learn to code")
		expect(user).to be_valid
	end

	it "is invalid without at least 1 list_item" do
		user = FactoryGirl.build(:user, list_item: nil)
		expect(user).to have(1).errors_on(:list_item)
	end

describe "#send_confirmation_email" do
    let(:user) { Factory(:user) }

    it "delivers email to user" do
      user.send_confirmation_email
      last_email.to.should include(user.email)
    end
  end

end
