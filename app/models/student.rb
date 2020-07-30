class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end

  def activate
    @student = Student.find_by_id(params[:id])
    @student.active ? @student.active = false : @student.active = true
    @student.save
  end
end