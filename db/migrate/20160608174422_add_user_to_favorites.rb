class AddUserToFavorites < ActiveRecord::Migration
  def change
    add_reference :favorites, :user, foreign_key: true, index: true
  end
end
