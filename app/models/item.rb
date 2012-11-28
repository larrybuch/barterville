# == Schema Information
#
# Table name: items
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :text
#  photo       :string(255)
#  user_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Item < ActiveRecord::Base
	belongs_to :user

  has_many :seller_item, :class_name => 'Trade', :foreign_key => 'seller_item_id'
  has_many :buyer_item, :class_name => 'Trade', :foreign_key => 'buyer_item_id'

	mount_uploader :photo, ProfilePicUploader
end
