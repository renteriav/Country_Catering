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

class Address < ActiveRecord::Base
  include FieldSanitizer
  belongs_to :addressable, :polymorphic => true
  #has_many :preferred_addresses
  #accepts_nested_attributes_for :preferred_addresses
  
  before_validation { |address| address.nameize :street, :city }
  
  validates :street, presence: { message: "Enter a street name." }
  validates :city, presence: { message: "Enter a city name." }
  validates :zip, length: { is: 5, message: "Enter a valid zip code." }
  validates :zip, :format => { :with => /\A^\d{5}$\z/, message: "Enter a valid zip code." }

end
