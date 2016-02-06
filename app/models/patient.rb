# == Schema Information
#
# Table name: patients
#
#  id                 :integer          not null, primary key
#  first_name         :string(255)
#  last_name          :string(255)
#  ur_number          :string(255)
#  medicare           :string(255)
#  credit_card        :string(255)
#  notes              :text
#  created_at         :datetime
#  updated_at         :datetime
#  masked_credit_card :string(255)
#

class Patient < ActiveRecord::Base

  attr_encrypted :credit_card,  random_iv: true
  attr_encrypted :medicare,  random_iv: true

  before_save do
    self.masked_credit_card = "#{'*' * 12}#{credit_card[12,15]}"
  end

end
