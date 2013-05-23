class GuestPostsController < ApplicationController

  def index
    @guest_posts = GuestPost.all
  end

  def show
    @guest_post = GuestPost.find_by_id(params[:id])
  end

  def new
    @guest_post = GuestPost.new
  end

  def create
    @guest_post = GuestPost.new
    @guest_post.comment = params[:comment]
    @guest_post.created_at = params[:created_at]
    @guest_post.user_id = params[:user_id]
    @guest_post.person_id = params[:person_id]
    
    if @guest_post.save
            redirect_to guest_posts_url
          else
      render 'new'
    end
  end

  def edit
    @guest_post = GuestPost.find_by_id(params[:id])
  end

  def update
    @guest_post = GuestPost.find_by_id(params[:id])
    @guest_post.comment = params[:comment]
    @guest_post.created_at = params[:created_at]
    @guest_post.user_id = params[:user_id]
    @guest_post.person_id = params[:person_id]
    
    if @guest_post.save
            redirect_to guest_posts_url
          else
      render 'edit'
    end
  end

  def destroy
    @guest_post = GuestPost.find_by_id(params[:id])
    @guest_post.destroy
        redirect_to guest_posts_url
      end
end
