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

require 'spec_helper'

describe Telephone do
  pending "add some examples to (or delete) #{__FILE__}"
end
