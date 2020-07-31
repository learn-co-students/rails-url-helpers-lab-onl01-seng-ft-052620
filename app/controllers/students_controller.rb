class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
    @students = Student.all
    @student.first_name + " " + @student.last_name
    render 'show.html.erb'
  end

  def activate
    @student = Student.find(params[:id])
    @student.active = !@student.active
    @student.save
    redirect_to student_path
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end