class Choice < ApplicationRecord
  belongs_to :category

  has_many :votes, dependent: :destroy

  validates :title, presence: true
  validate :number_of_choices

  def popularity
    votes.count
  end

  private
    def number_of_choices
      return unless self.class.where(category: category).count >= 2
      errors.add :category, "cannot exceed 2 choices"
    end 
  
end
