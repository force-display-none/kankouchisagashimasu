class Spot < ApplicationRecord
  acts_as_paranoid
  acts_as_taggable
  acts_as_taggable_on :tags, :interests
  geocoded_by :location, latitude: :latitude, longitude: :longitude
  after_validation :geocode

  belongs_to :area
  belongs_to :s_spot_genre

  has_many :spot_images, inverse_of: :spot
  has_many :spot_wents
  has_many :spot_wants
  has_many :spot_reviews

  accepts_nested_attributes_for :spot_images, reject_if: :all_blank, allow_destroy: true

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

  def went?(user)
    spot_wents.where(user_id: user.id).exists?
  end

  def want?(user)
    spot_wants.where(user_id: user.id).exists?
  end
end
