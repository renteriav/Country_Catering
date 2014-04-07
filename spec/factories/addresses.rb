# == Schema Information
#
# Table name: addresses
#
#  id               :integer          not null, primary key
#  street           :string(255)
#  city             :string(255)
#  state            :string(255)
#  zip              :string(255)
#  addressable_type :string(255)
#  addressable_id   :integer
#  created_at       :datetime
#  updated_at       :datetime
#

# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :address do
    street "MyString"
    city "MyString"
    state "MyString"
    zip "MyString"
    addressable_type "MyString"
    addressable_id 1
  end
end
