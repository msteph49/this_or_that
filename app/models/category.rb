class Category < ApplicationRecord
    has_many :choices

    validates :title, presence: true

    accepts_nested_attributes_for :choices
end
