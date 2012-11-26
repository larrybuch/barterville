# == Schema Information
#
# Table name: trades
#
#  id         :integer          not null, primary key
#  item_id    :integer
#  seller_id  :integer
#  buyer_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Trade < ActiveRecord::Base
	belongs_to :seller, :class_name => 'User', :foreign_key => 'seller_id'
	belongs_to :buyer, :class_name => 'User', :foreign_key => 'buyer_id'

end
