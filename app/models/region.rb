class Region < ApplicationRecord
  acts_as_paranoid
  has_many :prefectures

  validates :name, presence: true
end
