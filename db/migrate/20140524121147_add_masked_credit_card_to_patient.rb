class AddMaskedCreditCardToPatient < ActiveRecord::Migration
  def change
    add_column :patients, :masked_credit_card, :string
  end
end
