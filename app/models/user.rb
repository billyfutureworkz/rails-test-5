class User < ActiveRecord::Base
  validates :name, presence: true
  validates :year_of_experience, presence: true

  belongs_to :school
end
