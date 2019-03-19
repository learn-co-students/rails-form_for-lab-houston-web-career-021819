class StudentsController < ApplicationController

  #CREATE

  def create
    @student = Student.create(student_params)
    redirect_to student_path(@student)
  end

  def new
    @student = Student.new
  end

  #READ

  def show
    @student = Student.find(params[:id])
  end

  def index
    @students = Student.all
  end

  #UPDATE

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    @student.update(student_params)
    redirect_to student_path(@student)
  end

  #DELETE

  #strong params
  def student_params
    params.require(:student).permit(:first_name, :last_name)
  end

end
