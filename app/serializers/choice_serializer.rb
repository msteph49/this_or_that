class ChoiceSerializer < ActiveModel::Serializer
  attributes :id, :title
  has_one :category
end
