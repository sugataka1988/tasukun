class LabelsController < ApplicationController
  def index
    @label = Label.all
  end

  def show
    @label = Label.find_by(id: params[:id])
  end  
  
  def new
    @label = Label.new
  end
  
  def create
    @label = Label.new(name: params[:name])
    if @label.save
      flash[:notice] = "Succeeded !"
      redirect_to("/labels")
    else
      render("labels/new")
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
    else
      render("labels/edit")
    end
  end

  def destroy
    @label = Label.find_by(id: params[:id])
    @label.destroy
    flash[:notice] = "Succeeded !"
    redirect_to("/labels")
  end
end
