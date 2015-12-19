class School < ActiveRecord::Base
  self.inheritance_column = nil
  
  extend Enumerize
  enumerize :type, in: [:university, :high_school, :secondary_school, :primary_school]

  validates :name, presence: true
  validates :address, presence: true

  has_many :users
end