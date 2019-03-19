class StudentsController < ApplicationController
    def index
        @students = Student.all
    end
    
    def new
        @student = Student.new
    end

    def create
        #@student = Student.new(params.require(:student).permit(:first_name, :last_name))
        # @student.first_name = params[:first_name]
        # @student.last_name = params[:last_name]
        @student = Student.new(student_params)
        @student.save
        redirect_to student_path(@student)
    end

    def show
        @student = Student.find(params[:id])
    end

    def edit
        @student = Student.find(params[:id])
        
    end

    def update 
        @student = Student.find(params[:id])
        #@student.update(params.require(:student).permit(:student_first_name, :student_last_name))
        @student = Student.update(student_params)
        redirect_to student_path(@student)
    end

    def student_params
        params.require(:student).permit!
    end
end