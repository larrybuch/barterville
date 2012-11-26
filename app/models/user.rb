# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string(2	55)
#  photo           :string(255)
#  password_digest :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ActiveRecord::Base
	has_many :items
end
