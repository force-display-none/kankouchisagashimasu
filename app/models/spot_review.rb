class SpotReview < ApplicationRecord
  belongs_to :spot
  belongs_to :user

  has_many :spot_review_helpfuls
  has_many :spot_review_images

  validates :title,            presence: true
  validates :title,            length: { maximum:50 }
  validates :body,             presence: true
  validates :body,             length: { maximum:300 }
  validates :season,           presence: true
  validates :fellow_travelers, presence: true
  validates :public,           presence: true
  validates :spot_id,          presence: true
  validates :user_id,          presence: true

  enum fellow_travelers: { 家族全世代: 1, 家族3歳以下のお子様連れ: 2, 家族親および祖父母: 3, カップルまたは夫婦: 4, 友達同士: 5, 一人: 6 }
  enum public: { 非公開: false, 公開: true }
end
