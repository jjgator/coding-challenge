class PostsController < ApplicationController
  def index
    # Return all `Posts`
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    # Return view to create a new Post
    @post = Post.new
  end

  def create
    # Add a new `Post` to the database
    @post = Post.new(post_params)

    if @post.save
      redirect_to @post
    else
      render 'new'
    end
  end

  def destroy
    # Remove a `Post` from the database
  end

  private
    def post_params
      params.require(:post).permit(:title, :body)
    end
end
