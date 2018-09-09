class SpotReviewHelpful < ApplicationRecord
  belongs_to :spot_review
  belongs_to :user

  validates :spot_review_id, presence: true
  validates :user_id,        presence: true

end
