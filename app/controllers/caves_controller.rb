class CavesController < ApplicationController
  before_action :set_cafe, only: [:show, :edit, :destroy, :update]
  before_action :search_cafe, only:[:index, :search]
  def index
    @cafes = Cafe.order('created_at DESC').includes(:user) 
  end

  def new
    @cafe = Cafe.new
  end

  def show
    @lat = @cafe.latitude
    @lng = @cafe.longitude
    gon.lat = @lat
    gon.lng = @lng
  end

  def edit
  end

  def destroy
    @cafe.destroy
    redirect_to root_path(@cafe)
  end

  def update
    if @cafe.update(create_params)
      redirect_to cafe_path
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

  def search
    @results = @p.result
    end

  private
  def create_params
    params.require(:cafe).permit(:drink_name, :text, :wifi, :oshare, :shizuka, :concent, :speak, :bright_room, :dark_room, :pet, :smoke_room, :address,images: []).merge(user_id: current_user.id)
  end

  def search_cafe
    @p = Cafe.ransack(params[:q])
  end

  def set_cafe
    @cafe = Cafe.find(params[:id])
  end

end
