class UsersController < ApplicationController

  def likes
    @user = User.find_by(id: params[:id])
    @likes = Like.where(@user)
  end
end
