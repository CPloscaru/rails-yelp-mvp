class Review < ApplicationRecord
  AUTHORIZED_RATINGS = (1..5)
  belongs_to :restaurant
  validates :content, presence: true
  validates :rating, presence: true
  validates_associated :restaurant
  validates :rating, numericality: { only_integer: true }
  validates :rating, inclusion: { in: AUTHORIZED_RATINGS }
end
