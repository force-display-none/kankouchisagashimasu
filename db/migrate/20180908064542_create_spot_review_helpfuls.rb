class CreateSpotReviewHelpfuls < ActiveRecord::Migration[5.2]
  def change
    create_table :spot_review_helpfuls do |t|
      t.integer :spot_review_id, null:false
      t.integer :user_id,        null:false

      t.timestamps
    end
  end
end
