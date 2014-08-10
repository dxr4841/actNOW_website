class AddPetitionIdToSignatureTable < ActiveRecord::Migration
  def change
    add_column :signatures, :petition_id, :integer
  end
end
