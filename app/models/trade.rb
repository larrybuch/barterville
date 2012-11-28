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


# items
# 1 			"Laptop"			1
# 2			"Chair"				2


# users
# 1		"QA"
# 2		"Z"

# trades
# sold_item_id   seller_id buyer_id bought_item_id
# 1				1       2              2

# When creating a trade, we want to change the ownership of the items
# and create a record of that trade with who sold what to whom.