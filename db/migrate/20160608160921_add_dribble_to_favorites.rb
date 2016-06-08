class AddDribbleToFavorites < ActiveRecord::Migration
  def change
    add_column :favorites, :dribble, :string
  end
end
