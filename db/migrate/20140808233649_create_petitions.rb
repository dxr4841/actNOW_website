class CreatePetitions < ActiveRecord::Migration
  def change
    create_table :petitions do |t|
      t.string :title
      t.string :addressee
      t.string :author
      t.text :petition_summary
      t.text :petition_description

      t.timestamps

    end
  end
end
