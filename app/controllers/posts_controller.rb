class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(params[:post])
    if @post.save
      flash[:notice] = 'Post Created'
      redirect_to posts_path
    else
      flash[:error] = 'Post not created'
      render :new
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update_attributes(params[:post])
      flash[:notice] = 'Post Updated'
      redirect_to posts_path
    else
      flash[:error] = 'Post not updated'
      render :edit
    end
  end

  def destroy
    @post = Post.find(params[:id])
    if @post.destroy
      flash[:notice] = 'Post Destroyed'
      redirect_to posts_path
    else
      flash[:error] = 'Post not destroyed'
      render :show
    end
  end

end
