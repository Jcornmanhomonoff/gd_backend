class CreateFavorites < ActiveRecord::Migration
  def change
    create_table :favorites do |t|
      t.string :tag
      t.text :name

      t.timestamps null: false
    end
  end
end
