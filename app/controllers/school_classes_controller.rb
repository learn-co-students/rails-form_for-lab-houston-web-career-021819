class SchoolClassesController < ApplicationController

  def show
    @school_class = SchoolClass.find(params[:id])
  end

  def new
  end

  def create
    redirect_to SchoolClass.create(sc_params(:title, :room_number))
  end

  def edit
    @school_class = SchoolClass.find(params[:id])
  end

  def update
    new_sc = SchoolClass.find(params[:id])
    new_sc.update(sc_params(:title, :room_number))
    redirect_to new_sc
  end




  private
    def sc_params(*args)
      params.require(:school_class).permit(*args)
    end

end
