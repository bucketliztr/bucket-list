class UserMail < ActionMailer::Base
	# after_action :after_create
  default from: "postmaster@bucketliztr.com"

  def confirmation(user)
  	@user = user

  	mail(to: user.email, subject: "Your Bucket List", content_type: "text/html")
  end

  # def send_confirmation
  # 	after_create
  # 	after_update
  # end

end
