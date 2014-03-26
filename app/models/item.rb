# == Schema Information
#
# Table name: items
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  price      :decimal(6, 2)
#  proportion :decimal(3, 2)
#  unit       :string(255)
#  category   :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Item < ActiveRecord::Base
end
