class CreateSpotLikes < ActiveRecord::Migration[5.2]
  def change
    create_table :spot_likes do |t|
      t.integer :user_id
      t.integer :spot_id
      t.string  :remote_ip

      t.timestamps
    end
  end
end
