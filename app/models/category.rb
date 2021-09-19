class Category < ApplicationRecord
    has_many :choices

    validates :title, presence: true
    validates :choices
end
