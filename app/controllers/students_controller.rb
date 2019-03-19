class StudentsController < ApplicationController
    def index
        @students = Student.all
    end

    def edit
        @student = Student.find(params[:id])
    end

    def show
        @student = Student.find(params[:id])
    end
    
    def new
        @student = Student.new
    end

    def create
        @student = Student.create(student_params[:student])
        redirect_to @student
    end

    def edit
        @student = Student.find(params[:id])
    end

    def update
        @student = Student.find(params[:id])
        @student.update(student_params[:student])
        redirect_to @student
    end
    def student_params
        params.permit(student: [:first_name, :last_name])
    end

end
