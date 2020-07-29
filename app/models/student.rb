class Student < ActiveRecord::Base
  attribute :active, :boolean, default: false

  def active_switch
    self.active = !self.active
    self.save
  end

  def active_to_s
    self.active ? "active" : "inactive"
  end

  def to_s
    self.first_name + " " + self.last_name
  end
end