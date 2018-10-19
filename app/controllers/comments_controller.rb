class CommentsController < ApplicationController
  def edit
  	@post = Post.find(params[:post_id])
  	@comment = @post.comments.find(params[:id])
  end

	def create
		# Add a new comment to the post
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(comment_params)
    redirect_to post_path(@post)
  end

  def update
  	# edit comment
  	@comment = Comment.find(params[:id])

  	if @comment.update(comment_params)
	    redirect_to @comment
	  else
	    render 'edit'
	  end
  end

  def destroy
  	# Remove a comment from the database
  	@post = Post.find(params[:post_id])
  	@comment = Comment.find(params[:id])
  	@comment.destroy

  	redirect_to post_path(@post)
  end
 
  private
    def comment_params
      params.require(:comment).permit(:author, :body)
    end
end
