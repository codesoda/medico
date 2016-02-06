class AddEncryptedCreditCardToPatient < ActiveRecord::Migration
  def change
    add_column :patients, :encrypted_credit_card, :string
  end
end
