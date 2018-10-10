class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, #:confirmable,
         :omniauthable, omniauth_providers: [:facebook, :twitter]

  acts_as_paranoid

  has_many :spot_wants
  has_many :spot_wents
  has_many :spot_reviews
  has_many :spot_review_helpfuls
  has_many :likes
  has_many :spot_likes, dependent: :destroy

  validates :name,       presence: true
  validates :name,       length: { in: 2..20 }
  validates :nickname,   presence: true
  validates :nickname,   length: { in: 2..20 }
  validates :gender,     presence: true
  validates :age,        presence: true
  validates :management, presence: true

  enum gender: { 男性: 1, 女性: 2 }
  enum age:    { 十代: 1, 二十代: 2, 三十代: 3, 四十代: 4, 五十代: 5, 六十代: 6, 七十代: 7, 八十代以上: 8, 十代未満: 9 }

  # omniauthから対応するuserを取得する
  def self.from_omniauth(auth)
    # どのSNSで認証したかをproviderで判定
    if auth.provider == 'facebook'
      where(facebook_uid: auth.uid).first
    # twitterの判定も先取って記述しておきます
    elsif auth.provider == 'twitter'
      where(twitter_uid: auth.uid).first
    end
  end

  # ユーザー登録に渡すデータを設定
  # session['devise.omniauth_data']はomniauth_callbacks_controllerからきます
  def self.new_with_session(_, session)
    super.tap do |user|
      if (data = session['devise.omniauth_data'])
        user.email = data['email'] if user.email.blank?
        user.name = data['name'] if user.name.blank?
        user.provider = data['provider'] if user.provider.blank?
        user.facebook_uid = data['facebook_uid'] if data['facebook_uid'] && user.facebook_uid.blank?
        # twitterの判定も先取って記述しておきます
        user.twitter_uid = data['twitter_uid'] if data['twitter_uid'] && user.twitter_uid.blank?
        # user.skip_confirmation!
      end
    end
  end

  protected

  # ログイン時、OmniAuthで認証したユーザーのパスワード入力免除するため、Deviseの実装をOverrideする。
  def password_required?
    super && provider.blank?  # provider属性に値があればパスワード入力免除
  end

  # Edit時、OmniAuthで認証したユーザーのパスワード入力免除するため、Deviseの実装をOverrideする。
  def update_with_password(params, *options)
    if encrypted_password.blank?            # encrypted_password属性が空の場合
      update_attributes(params, *options)   # パスワード入力なしにデータ更新
    else
      super
    end
  end

end
