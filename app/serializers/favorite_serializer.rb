class FavoriteSerializer < ActiveModel::Serializer
  attributes :id, :tag, :name, :dribble
  belongs_to :user
end
