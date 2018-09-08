class CreateSpotWents < ActiveRecord::Migration[5.2]
  def change
    create_table :spot_wents do |t|
      t.integer :spot_id, null:false
      t.integer :user_id, null:false

      t.timestamps
    end
  end
end
