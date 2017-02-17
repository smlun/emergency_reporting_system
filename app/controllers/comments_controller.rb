class CommentsController < ApplicationController
  def index
    @comments = Comment.find(params[:emergency_id])
  end

  def create
    @emergency = Emergency.find(params[:emergency_id])
    @comment = @emergency.comments.build(comment_params)
    @comment.emergency = @emergency
    @comment.save
    redirect_to emergency_path(@emergency)
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to emergency_path(params[:emergency_id])
  end

private
  def comment_params
    params.require(:comment).permit(:name, :content)
  end
end
