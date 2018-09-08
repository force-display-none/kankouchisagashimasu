class CreateLSpotGenres < ActiveRecord::Migration[5.2]
  def change
    create_table :l_spot_genres do |t|
      t.string   :name,      null:false
      t.datetime :deleted_at

      t.timestamps
    end
    add_index :l_spot_genres, :name
  end
end
