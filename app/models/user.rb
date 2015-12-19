class User < ActiveRecord::Base
  validates :name, presence: true
  validates :year_of_experience, presence: true
  validates :year_of_experience, numericality: { greater_than_or_equal_to: 0 }

  belongs_to :school
end