class LabelsController < ApplicationController
  before_action :set_label, only: [:show, :edit, :update, :destroy]
  
  def index
    @label = Label.all
  end

  def show
  end  
  
  def new
    @label = Label.new
  end
  
  def create
    @label = Label.new(label_params)
    if @label.save
      flash[:notice] = "Succeeded !"
      redirect_to("/labels")
    else
      render("labels/new")
    end
  end
  
  def edit
  end
  
  def update
    #@label.name = params[:name]
    #if @label.save
    if @label.update(label_params)
      flash[:notice] = "Succeeded !"
      redirect_to("/labels")
    else
      render("labels/edit")
    end
  end

  def destroy
    @label.destroy
    flash[:notice] = "Succeeded !"
    redirect_to("/labels")
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_label
      @label = Label.find_by(id: params[:id])
    end
    
      # Only allow a list of trusted parameters through.
    def label_params
      params.require(:label).permit(:name)
    end
  
end
