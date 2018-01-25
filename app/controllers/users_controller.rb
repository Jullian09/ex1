class UsersController < ApplicationController
  def index
  end

  def new
    @user=User.new
  end

  def create
    @user= User.create (user_params)
    if @user.save
      redirect_to root_path, notice: "Bienvenue à toi, nouvel utilisateur"
    end
  end

private

  def user_params
    params.require(:user).permit(:name, :password, :role)

  end

end
