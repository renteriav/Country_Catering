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

	before_validation { |item| item.name = item.name.strip.capitalize unless item.name.nil?}

	validates :name, presence: {message: "Enter name"}
	validates :price, presence: {message: "Enter price"}
	validates_numericality_of :price, greater_than: 0, message: "Price can't be zero"
	validates :unit, presence: {message: "Select unit"}
	validates :proportion, presence: {message: "Enter proportion"}
	validates_numericality_of :proportion, greater_than: 0, message: "Proportion can't be zero"
	validates :category, presence: {message: "Select category"}
end
