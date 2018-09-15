class SpotReviewImage < ApplicationRecord
  belongs_to :spot_review

  has_many :likes

  attachment :image
end
