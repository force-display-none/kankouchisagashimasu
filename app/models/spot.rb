class Spot < ApplicationRecord
  acts_as_paranoid

  belongs_to :area
  belongs_to :s_spot_genre

  has_many :spot_images
  has_many :spot_wents
  has_many :spot_wants
  has_many :spot_reviews

  validates :name,              presence: true
  validates :description,       presence: true
  validates :description,       length: { maximum:300 }
  validates :short_description, presence: true
  validates :short_description, length: { maximum:100 }
  validates :period,            presence: true
  validates :location,          presence: true
  validates :path,              presence: true
  validates :area_id,           presence: true
  validates :s_spot_genre_id,   presence: true
end
