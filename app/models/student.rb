class Student < User
  def schoolmates
    Student.joins(:school).select('users.id, users.name')
  end
end