class PostsController < ApplicationController
  def index
    posts = Post.all
    render json: posts
  end

  def create
    @post = Post.new(params_post)
    if @post.save
      render json: @post
    else
      render json: { errors: @post.errors.full_messages}
    end
  end

  def update
    @post = Post.find(params[:id])
    if @post.update_attributes(params_post)
      render json: @post
    else
      render json: { errors: @post.errors.full_messages}
    end
  end

  def show
    @post = Post.find(params[:id])
    render json: @post
  end

  def destroy
    @post = Post.find(params[:id])
    if @post.destroy
      render json: :no_content
    else
      render json: { errors: @post.errors.full_messages}
    end
  end

  private

  def params_post
    params.require(:post).permit(:title, :body)
  end
end
