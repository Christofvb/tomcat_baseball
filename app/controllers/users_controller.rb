class UsersController < ApplicationController
  before_action :set_user, only: [ :show, :edit, :update, :destroy ]
  before_action :authenticate_user!  # S'assure que l'utilisateur est connecté

  def index
    @users = User.all
  end

  def show
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to @user, notice: "User was successfully created."
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @user.update(user_params)
      redirect_to @user, notice: "User was successfully updated."
    else
      render :edit
    end
  end

  def destroy
    @user.destroy
    redirect_to users_url, notice: "User was successfully destroyed."
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  # Méthode user_params corrigée
  def user_params
    # Ajoutez ici les attributs que vous souhaitez permettre
    params.require(:user).permit(:prenom, :nom, :code_postal, :ville, :adresse, :email, :password, :password_confirmation, :prenom)
  end
end
