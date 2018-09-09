class Area < ApplicationRecord
  acts_as_paranoid
  belongs_to :prefecture

  has_many   :spots

  validates :name,          presence: true
  validates :prefecture_id, presence: true
  validates :prefecture_id, uniqueness: true
end
