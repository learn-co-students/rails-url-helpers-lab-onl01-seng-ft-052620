class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end

  def active_student
    if self.active == true
      self.active = false
    else
      self.active = true
    end
    self.save
  end
end