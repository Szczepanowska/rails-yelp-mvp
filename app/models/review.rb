class Review < ApplicationRecord
  belongs_to :restaurant

  RANGE = (0..5)
  validates :content, :rating, presence: true
  validates :rating, inclusion: {in: RANGE }, numericality: { only_integer: true }
end
