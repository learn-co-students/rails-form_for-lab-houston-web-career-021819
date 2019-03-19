class StudentsController < ApplicationController
  #Create

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    @student.save
    redirect_to student_path(@student)
  end

  #Read

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  #Update

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    @student.update(student_params)
    redirect_to student_path(@student)
  end

  #Delete

  def destroy
    Student.find(params[:id]).destroy
  end

  def student_params
    params.require(:student).permit(:first_name, :last_name)
  end
end
