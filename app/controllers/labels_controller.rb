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
    @post.save
    redirect_to("/labels")
  end
end
