class UsersController < ApplicationController
  before_filter :authorize_user, only: [:edit, :update, :destroy]
  before_filter :find_user, except:[:index, :new, :create]
  # before_filter :require_signin

  # def require_signin
  #   unless signed_in?
  #   redirect_to login_url
  #   end
  # end

  def authorize_user
    @user = User.find_by_id(params[:id])
    if current_user.id != @user.id
      redirect_to edit_user_url(current_user.id), notice: "You don't have access to this page."
    end
  end

  def find_user
    @user = User.find_by_id(params[:id])
  end


  def index
    @users = User.all
  end

  def show
    # Filter is running user = User.find_by_id(params[:id])

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
    # Filter is running user = User.find_by_id(params[:id])
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
    # Filter is running user = User.find_by_id(params[:id])
    @user.destroy
        redirect_to users_url
      end
end
