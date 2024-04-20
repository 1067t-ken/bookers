class ListController < ApplicationController
  def new
    @list = List.new  
  end

  def index
    @list = List.all
  end

  def show
  end

  def edit
  end
  
  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to list_path(@list.id)
    else
      render :new, status: :unprocessable_entity
    end
  end
  
  private
  
  def list_params
    params.require(:list).permit(:title, :body)
  end
end
