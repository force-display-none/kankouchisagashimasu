class Like < ApplicationRecord
  belongs_to :spot_review_image
  belongs_to :user

  validates :spot_review_image_id, presence: true
  validates :user_id,              presence: true
end
