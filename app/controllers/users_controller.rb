class UsersController < ApplicationController
  def index
  end

#L'inscription des utilisateurs

  def new
    @user = User.new
  end

  def create
    @user = User.create (user_params)
    if @user.save
      redirect_to root_path, notice: "Bienvenue à toi, nouvel utilisateur"
    end
  end

#La connexion des utilisateurs

  def login
    @user = User.new
  end

  def check
    @current_user = User.where(user_params).first
    if @current_user
      redirect_to root_path, notice: "Bienvenue à toi, #{@current_user.name} !"
    else
      redirect_to user_login_path, alert: "Vous avez dû vous tromper dans le mot de passe ou l'identifiant, veuillez recommencer"
    end
  end

private

  def user_params
    params.require(:user).permit(:name, :password, :role)

  end

end
