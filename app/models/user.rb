class User < ActiveRecord::Base
	
  
	extend FriendlyId
  friendly_id :name, use: :slugged

  has_many :list_items
  accepts_nested_attributes_for :list_items, :allow_destroy => true, :reject_if => :all_blank

  validates :name, :email, :location, presence: true
  validates :name, length: { minimum: 3 }
  validates :email, :name, uniqueness: true


 #  class EmailConfirmationError < StandardError
	# end
  

  # after_create :send_confirmation_email

  # def send_confirmation_email
  #   Confirmation.confirmation(self)
  # end
end
