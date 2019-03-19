class SchoolClassesController < ApplicationController
    def index
        @school_classes = SchoolClass.all
    end

    def new
        @school_class = SchoolClass.new
    end
    def create
        @school_class = SchoolClass.create(school_class_params[:school_class])
        redirect_to @school_class
    end
    def show
        @school_class = SchoolClass.find(params[:id])
    end
    def edit
        @school_class = SchoolClass.find(params[:id])
    end
    def update
        @school_class = SchoolClass.find(params[:id])
        @school_class.update(school_class_params[:school_class])
        redirect_to @school_class
    end
    def school_class_params
        params.permit(school_class: [:title, :room_number])
    end
end
