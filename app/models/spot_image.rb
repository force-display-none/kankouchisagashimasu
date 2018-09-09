class SpotImage < ApplicationRecord
  belongs_to :spot

  validates :spot_id, presence: true
end
