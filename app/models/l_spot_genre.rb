class LSpotGenre < ApplicationRecord
  acts_as_paranoid
  has_many :s_spot_genres

  validates :name, presence: true
end
