class ChangeDatatypeSeasonOfSpotReviews < ActiveRecord::Migration[5.2]
  def change
  	change_column :spot_reviews, :season, :date
  end
end
