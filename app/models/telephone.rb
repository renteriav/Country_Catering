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

class Telephone < ActiveRecord::Base

	belongs_to :phoneable, :polymorphic => true

  	before_validation { |telephone| telephone.number = telephone.number.to_s.gsub(/[^0-9]/, "") }
  
	validates :number, :length => { :is => 10, message: "Enter a valid number" }, if: :number_presence?
  
  def number_presence?
    self.number.present?
  end

end
