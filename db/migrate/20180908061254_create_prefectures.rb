class CreatePrefectures < ActiveRecord::Migration[5.2]
  def change
    create_table :prefectures do |t|
      t.string   :name,      null: false
      t.integer  :region_id, null: false
      t.datetime :deleted_at

      t.timestamps
    end
    add_index :prefectures, :name
  end
end
