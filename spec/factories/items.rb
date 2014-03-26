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

# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :item do
    name "MyString"
  end
end
