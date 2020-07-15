class LabelsController < ApplicationController
  def index
    @label = Label.all
  end

  def show
    @label = Label.find_by(id: params[:id])
  end  
  
  def new
  end
  
  def create
    @post = Label.new(name: params[:name])
    if @post.save
      flash[:notice] = "Succeeded !"
      redirect_to("/labels")
    end
  end
  
  def edit
    @label = Label.find_by(id: params[:id])
  end
  
  def update
    @label = Label.find_by(id: params[:id])
    @label.name = params[:name]
    if @label.save
      flash[:notice] = "Succeeded !"
      redirect_to("/labels")
    end
  end

end
