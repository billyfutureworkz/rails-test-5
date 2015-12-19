class User < ActiveRecord::Base
  validates :name, presence: true
  validates :year_of_experience, presence: true, if: :office_worker?
  validates :year_of_experience, numericality: { greater_than_or_equal_to: 0 }, if: :office_worker?
  validate :at_least_20, if: :office_worker?
  validate :at_least_18, if: :student?

  belongs_to :school

  def at_least_20
    if self.dob
      errors.add(:dob, 'You must be 20 years or older.') if self.dob > 20.years.ago.to_date
    end
  end

  def at_least_18
    if self.dob
      errors.add(:dob, 'You must be 18 years or older.') if self.dob > 18.years.ago.to_date
    end
  end

  def student?
    self.class.name == 'Student'
  end

  def office_worker?
    self.class.name == 'OfficeWorker'
  end
end