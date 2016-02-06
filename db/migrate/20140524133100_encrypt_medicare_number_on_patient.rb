class EncryptMedicareNumberOnPatient < ActiveRecord::Migration
  def change
    add_column :patients, :encrypted_medicare, :string
    remove_column :patients, :medicare, :string
  end
end
