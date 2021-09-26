class Category < ApplicationRecord
    has_many :choices, dependent: :destroy
    has_many :votes, through: :choices

    validates :title, presence: true
    validates :choices, length: {minimum: 2, maximum: 2}

    accepts_nested_attributes_for :choices

    def popularity
        votes.count
    end
end
