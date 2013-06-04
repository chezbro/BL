class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find_by_id(params[:id])

  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])

    if @user.save
            session[:user_id] = @user.id
            redirect_to user_url(@user)
          else
      render 'new'
    end
  end

  def edit
    @user = User.find_by_id(params[:id])
  end

  def update
    @user = User.find_by_id(params[:id])
    @user.first_name = params[:first_name]
    @user.last_name = params[:last_name]
    @user.full_name = params[:full_name]
    @user.email = params[:email]
    @user.uid = params[:uid]
    @user.access_token = params[:access_token]
    @user.provider = params[:provider]
    @user.avatar = params[:avatar]
    if @user.save
            redirect_to users_url
          else
      render 'edit'
    end
  end

  def destroy
    @user = User.find_by_id(params[:id])
    @user.destroy
        redirect_to users_url
      end
end
