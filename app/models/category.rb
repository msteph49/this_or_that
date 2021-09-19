class Category < ApplicationRecord
    has_many :choices

    validates :title, presence: true
    validates :choices, length: {minimum: 2, maximum: 2}

    accepts_nested_attributes_for :choices
end
