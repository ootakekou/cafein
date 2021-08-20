class CafesController < ApplicationController
  def index
    @cafes = Cafe.order('created_at DESC').includes(:user)
  end

  def new
    @cafe = Cafe.new
  end

  def show
    @cafe = Cafe.find(params[:id])
    @lat = @cafe.latitude
    @lng = @cafe.longitude
    gon.lat = @lat
    gon.lng = @lng
  end

  def edit
    @cafe = Cafe.find(params[:id])
  end

  def update
    @cafe = Cafe.find(params[:id])
    if @cafe.update(create_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  
  def create
    @cafe = Cafe.new(create_params)
    if @cafe.save
      redirect_to root_path
    else
      render :new
    end
  end
  

  private
  def create_params
    params.require(:cafe).permit(:drink_name, :text, :wifi, :oshare, :shizuka, :concent, :speak, :bright_room, :dark_room, :pet, :smoke_room, :address,:image).merge(user_id: current_user.id)
  end
end
