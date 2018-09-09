class SSpotGenre < ApplicationRecord
  acts_as_paranoid
  belongs_to :l_spot_genre

  has_many :spots

  validates :name,            presence: true
  validates :l_spot_genre_id, presence: true
  validates :l_spot_genre_id, uniqueness: true
end
