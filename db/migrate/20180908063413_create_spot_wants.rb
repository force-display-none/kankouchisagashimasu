class CreateSpotWants < ActiveRecord::Migration[5.2]
  def change
    create_table :spot_wants do |t|
      t.integer :spot_id, null:false
      t.integer :user_id, null:false

      t.timestamps
    end
  end
end
