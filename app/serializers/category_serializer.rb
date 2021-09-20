class CategorySerializer < ActiveModel::Serializer
  attributes :id, :title, :image_url
  has_many :choices
end
