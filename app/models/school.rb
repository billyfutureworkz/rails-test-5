class School < ActiveRecord::Base
  extend Enumerize
  enumerize :type, in: [:university, :high_school, :secondary_school, :primary_school]
  
  validates :name, presence: true
  validates :address, presence: true
end