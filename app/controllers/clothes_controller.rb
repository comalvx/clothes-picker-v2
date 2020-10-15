class ClothesController < ApplicationController

  def index
    @clothes = Clothe.all
  end

  def new
    @clothe = Clothe.new
  end

  def show
    @clothe = Clothe.find(params[:id])
  end

  def create
    @clothe = Clothe.new(clothes_params)
    @clothe.user = current_user
    if @clothe.save
      redirect_to clothe_path(@clothe)
    else
      render :new
    end
  end

  private

  def clothes_params
    params.require(:clothe).permit(:name, :weather, :temperature, :clothe_type, :tag)
  end

end

