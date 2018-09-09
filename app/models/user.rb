class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :spot_wants
  has_many :spot_wents
  has_many :spot_reviews
  has_many :spot_review_helpfuls
  has_many :likes

  validates :name,       presence: true
  validates :name,       length: { in: 2..20 }
  validates :nickname,   presence: true
  validates :nickname,   length: { in: 2..20 }
  validates :gender,     presence: true
  validates :age,        presence: true
  validates :management, presence: true

  enum gender: { 男性: 1, 女性: 2 }
  enum age:    { 十代: 1, 二十代: 2, 三十代: 3, 四十代: 4, 五十代: 5, 六十代: 6, 七十代: 7, 八十代以上: 8, 十代未満: 9 }
end
