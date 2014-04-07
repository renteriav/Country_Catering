# == Schema Information
#
# Table name: telephones
#
#  id             :integer          not null, primary key
#  number         :string(255)
#  phoneable_type :string(255)
#  phoneable_id   :integer
#  created_at     :datetime
#  updated_at     :datetime
#

# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :telephone do
    number "MyString"
    phoneable_type "MyString"
    phoneable_id 1
  end
end
