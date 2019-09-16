class Contact < ApplicationRecord
	validates :email, presence: true
	validates :messege, presence: true
end
