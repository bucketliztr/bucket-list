class ListItem < ActiveRecord::Base
  belongs_to :user
  validates_presence_of :content, length: { minimum: 3 }
end
