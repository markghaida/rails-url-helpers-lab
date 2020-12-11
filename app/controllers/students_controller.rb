class StudentsController < ApplicationController

  
  def index
    @students = Student.all
    #byebug
  end

  def show
    @student = Student.find(params[:id])
    #byebug
  end

  def activate #
    @student = Student.find(params[:id])
    @student.active = !@student.active
    @student.save 
    redirect_to student_path(@student) # I do not understand this line bc Im not clear what "student_path(@student)" is doing 
  end 

end 