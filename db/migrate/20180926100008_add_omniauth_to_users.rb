class AddOmniauthToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :provider, :string
    add_column :users, :facebook_uid, :string
    add_column :users, :twitter_uid, :string
  end
end
