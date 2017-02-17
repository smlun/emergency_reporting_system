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
    @comment.destroy
    respond_to do |format|
      format.html { redirect_to emergencies_path, notice: 'Successfully deleted.' }
      format.json { head :no_content }
    end
  end

private
  def comment_params
    params.require(:comment).permit(:name, :content)
  end
end
