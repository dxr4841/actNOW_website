class AddVideoUrlToPetitionsTable < ActiveRecord::Migration
  def change
add_column :petitions, :video_url, :string
  end
end
