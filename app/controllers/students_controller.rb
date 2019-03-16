class StudentsController < ApplicationController

  skip_before_action :verify_authenticity_token

  def edit                                                                                      #Form
		@student = Student.find(params[:id])
	end

	def new                                                                                     #Form
	end

	def create                                                                               #Create
    @student = Student.create(student_params)
		redirect_to @student
	end
	
	def index                                                                                   #Read
    @students = Student.all
	end

	def show
		@student = Student.find(params[:id])                          #Read
	end
	
	def update                                                                            #Update
    @student = Student.find(params[:id])
    @student.update(student_params)
		redirect_to @student
	end
	
	def destroy                                                                          #Destroy
		@student = student.find(params[:id])
		@student.destroy
		redirect_to '/students'
	end
	
	private
	
	def student_params                                                #Security
		params.require(:student).permit(:first_name, :last_name)
end


end
