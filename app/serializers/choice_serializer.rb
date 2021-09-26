class ChoiceSerializer < ActiveModel::Serializer
  attributes :id, :title, :image_url, :popularity
  has_one :category
end
