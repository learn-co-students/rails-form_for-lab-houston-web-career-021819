class SchoolClassesController < ApplicationController

  skip_before_action :verify_authenticity_token

  def edit
		@school_class = SchoolClass.find(params[:id])
	end

	def new
	end

	def create
		@school_class = SchoolClass.create(school_class_params)
		redirect_to @school_class
	end
	
	def index
		@school_classes = SchoolClass.all
	end

	def show
		@school_class = SchoolClass.find(params[:id])
	end
	
	def update
		@school_class = SchoolClass.find(params[:id])
		@school_class.update(school_class_params)
		redirect_to @school_class
	end
	
	def destroy                                                                          #Destroy
		@school_class = SchoolClass.find(params[:id])
		@school_class.destroy
		redirect_to '/school_classes'
	end
	
	private
	
	def school_class_params                                               #Security
		params.require(:school_class).permit(:title, :room_number)
	end


end
