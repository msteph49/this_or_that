class CategorySerializer < ActiveModel::Serializer
  attributes :id, :title, :image_url, :popularity
  has_many :choices
end
