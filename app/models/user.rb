# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  photo           :string(255)
#  password_digest :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ActiveRecord::Base
	has_secure_password 
	has_many :items
	has_many :seller, :class_name => 'Trade', :foreign_key => 'seller_id'
	has_many :buyer, :class_name => 'Trade', :foreign_key => 'buyer_id'

	mount_uploader :photo, ProfilePicUploader
end
