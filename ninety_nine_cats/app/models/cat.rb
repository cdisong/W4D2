class Cat < ApplicationRecord
  COLORS = %w(red white blue)
  SEX = %w(m f)
  validates :birth_date, :name, :color, :sex, :description, presence: true
  validates :color, inclusion: { in: COLORS,
    message: "%{value} is not a valid color" }
  validates :sex, inclusion: { in: SEX,
    message: "%{value} is not a valid sex" }

  has_many :cat_rental_requests

end
