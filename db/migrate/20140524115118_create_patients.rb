class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :first_name
      t.string :last_name
      t.string :ur_number
      t.string :medicare
      t.string :credit_card
      t.text :notes

      t.timestamps
    end
  end
end
