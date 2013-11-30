require "spec_helper"

describe UserMail do
  describe "confirmation" do
    let(:user) { Factory(:user) }
    let(:mail) { UserMailer.send_confirmation_email(user) }

    it "sends user a confirmation email after creating a Bucket List" do
      mail.subject.should eq("Your Bucket List")
      mail.to.should eq([user.email])
      mail.from.should eq(["from@example.com"])
      mail.body.encoded.should have_content("Welcome to Bucketlistr")
    end
  end
end
