class FavoriteSerializer < ActiveModel::Serializer
  attributes :id, :tag, :name
  belongs_to :user
end
