require 'spec_helper'

describe ListItem do

	it "is invalid without content" do
		list_item = FactoryGirl.build(:list_item, content: nil)
		expect(list_item).to have(1).errors_on(:content)
	end

end
