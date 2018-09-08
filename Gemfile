source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.3.7'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.2.1'
# Use sqlite3 as the database for Active Record
gem 'sqlite3'
# Use Puma as the app server
gem 'puma', '~> 3.11'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'mini_racer', platforms: :ruby

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
# gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use ActiveStorage variant
# gem 'mini_magick', '~> 4.8'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0', require: false

# Add
# Template/Framework
gem 'bootstrap-sass'        #Bootstrapが使える
gem 'compass-rails'         #Sassの機能拡張
gem 'font-awesome-rails'    #アイコンFontAwesomeが使える
gem 'jquery-rails'          #jqueryが使える
gem 'jquery-turbolinks'     #Bootstrapとjquery用
gem 'jquery-ui-rails'       #jqueryが使える

#Uploader/Image_operation
gem 'lightbox2-rails'       #画像モーダルウィンドウ表示用
gem 'refile', require: "refile/rails", github: 'manfe/refile' #画像アップローダー
gem 'refile-mini_magick'    #refileでリサイズできる
gem 'rmagick'               #imagemagickのRuby用インターフェース

#Authentication
gem 'devise'                #認証機能を実装する
gem 'omniauth'              #外部アカウントでログイン出来る
gem 'omniauth-facebook'     #omniauthを使ってFacebookログイン出来る
gem 'omniauth-twitter'      #omniauthを使ってTwitterログイン出来る

#Other_utility
# gem 'acts-as- taggable-on'  #タグ機能を実装する
# gem 'dotenv-rails'          #環境変数管理
# gem 'enum_help'             #enumをI18n対応させる
# gem 'geocoder'              #緯度と経度を取得する
# gem 'gmaps4rails'           #Googleマップを表示する
# gem 'gon'                   #railsとJS間での変数受け渡し用
# gem 'jqcloud-rails'         #タグクラウド実装用
# gem 'kaminari'              #ページャ
# gem 'meta-tags'             #metaタグヘルパー,FacebookのOGP設定用
# gem 'nested_form'           #formで子モデルの追加が楽になる
# gem 'paranoia', '~> 2.3', '>= 2.3.1' #論理削除用
# gem 'public_activity'       #通知機能実装用
# gem 'rails_autolink'        #URLの自動リンク化
# gem 'rails_config'          #定数管理
# gem 'ransack'               #検索機能実装用
# gem 'select2-rails'         #セレクトボックスに検索機能がつく
# gem 'socialization'         #いいね機能実装用

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  #add
  # gem 'guard'                 #テストの自動化(監視)用
  # gem 'guard-livereload'      #ファイルが変更されたらページを自動リロードする
  # gem 'guard-rspec'           #ファイルが変更されたらRspecを自動実行
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  # Add
  gem 'annotate', git: 'git://github.com/ctran/annotate_models.git' #テーブル情報をモデルファイルに追記してくれる
  # debug
  gem 'better_errors'          #エラー画面を見易くする
  gem 'binding_of_caller'      #エラー画面でデバッグする
  gem 'hirb'                   #SQLの結果を見易くする
  gem 'hirb-unicode'           #hirdの日本語対応
  gem 'pry-rails'              #railsでpryが使える
  gem 'pry-byebug'             #pryでデバッグコマンドが使える
  gem 'pry-doc'                #pryでメソッドのソースが参照できる
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  # Easy installation and use of chromedriver to run system tests with Chrome
  gem 'chromedriver-helper'
  # Add
  # gem 'database_cleaner'        #テストの実行後にDBをクリア
  # gem 'factory_bot_rails'       #テストデータの作成
  # gem 'faker'                   #テストデータの作成
  # gem 'launchy'                 #テスト中に現在のページをブラウザで開ける
  # gem 'rspec'                   #テストツール
  # gem 'rspec-rails'             #railsでRspecが使える
  # gem 'spring-commands-rspec'   #Rspecの高速化
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

# Production
  # gem 'capistrano-rails'         #デプロイツール
  # gem 'capistrano-rbenv'         #デプロイツール
  # gem 'capistrano-passenger'     #デプロイツール
  # gem 'json'
  # gem 'mysql2'
