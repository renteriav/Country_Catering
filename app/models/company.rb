# == Schema Information
#
# Table name: companies
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Company < ActiveRecord::Base
	include FieldSanitizer
	has_many :telephones, :as => :phoneable, :dependent => :destroy
	accepts_nested_attributes_for :telephones, :allow_destroy => true, :reject_if => proc { |a| a['number'].blank? }

	has_many :addresses, :as => :addressable
  	#has_many :preferred_addresses, :through => :addresses
  	accepts_nested_attributes_for :addresses
  	before_validation { |company| company.nameize :name }
  	validates :name, presence: {message: "Enter the name of the company."}
end
