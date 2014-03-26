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

require 'test_helper'

class ItemTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Item.new.valid?
  end
end
