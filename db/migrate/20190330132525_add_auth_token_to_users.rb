class AddAuthTokenToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :auth_token, :string
    add_index :user, :auth_token, unique: true
  end
end
