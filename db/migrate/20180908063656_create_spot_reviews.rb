class CreateSpotReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :spot_reviews do |t|
      t.text    :body,             null:false
      t.integer :season,           null:false
      t.integer :fellow_travelers, null:false
      t.boolean :public,           null:false, default: "false"
      t.integer :spot_id,          null:false
      t.integer :user_id,          null:false

      t.timestamps
    end
  end
end
