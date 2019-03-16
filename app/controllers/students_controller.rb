class StudentsController < ApplicationController

  def show
    @student = Student.find(params[:id])
  end

  def new
  end

  def create
    redirect_to Student.create(student_params(:first_name, :last_name))
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    new_Student = Student.find(params[:id])
    new_Student.update(student_params(:first_name, :last_name))
    redirect_to new_Student
  end




  private
    def student_params(*args)
      params.require(:student).permit(*args)
    end




end
