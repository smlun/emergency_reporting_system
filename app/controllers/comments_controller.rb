class CommentsController < ApplicationController
  def index
  end

  def show
    @emergency = Emergency.last
    @comment = Comment.new
    # @comment = @emergency.comments.build
  end

  def new
    @emergency = Emergency.find(params[:emergency_id])
    @comment = @emergency.comments.create(comment_params)
    redirect_to emergency_path(@emergency)
  end

  def destroy
  end

private
  def comment_params
    params.require(:comment).permit(:name, :content)
  end
end
