class Choice < ApplicationRecord
  belongs_to :category

  has_many :votes

  validates :title, presence: true
  
  
end
