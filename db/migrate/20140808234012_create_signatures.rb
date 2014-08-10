class CreateSignatures < ActiveRecord::Migration
  def change
    create_table :signatures do |t|
      t.string :first_name
      t.string :last_name
      t.string :city
      t.string :country
      t.integer :phone_number

      t.timestamps

    end
  end
end
