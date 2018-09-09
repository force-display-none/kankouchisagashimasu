class Prefecture < ApplicationRecord
  acts_as_paranoid
  belongs_to :region

  has_many :areas

  validates :name,      presence: true
  validates :region_id, presence: true
  validates :region_id, uniqueness: true
end
