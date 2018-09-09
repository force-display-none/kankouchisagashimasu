class SpotReviewImage < ApplicationRecord
  belongs_to :spot_review

  has_many :likes

  validates :spot_review_id, presence: true
end
