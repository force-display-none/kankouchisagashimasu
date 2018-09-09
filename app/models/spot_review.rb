class SpotReview < ApplicationRecord
  belongs_to :spot
  belongs_to :user

  has_many :spot_review_helpfuls
  has_many :spot_review_images

  validates :title,            presence: true
  validates :title,            length: { maximum:50 }
  validates :body,             presence: true
  validates :body,             length: { maximum:300 }
  validates :season,           presence: true
  validates :fellow_travelers, presence: true
  validates :public,           presence: true
  validates :spot_id,          presence: true
  validates :user_id,          presence: true
end
