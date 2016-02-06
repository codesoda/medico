class RemoveCreditCardFromPatient < ActiveRecord::Migration
  def change
    remove_column :patients, :credit_card, :string
  end
end
