class Contact < ActiveRecord::Base
  validates :email, presence: true
  validates :subject, presence: true
end
