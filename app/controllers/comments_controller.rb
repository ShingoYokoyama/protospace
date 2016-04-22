class CommentsController < ApplicationController
  def create
    @prototype = Prototype.find_by(id: comment_params[:prototype_id])
    @comment = current_user.comments.create(comment_params)
    @comments = @prototype.comments
  end

  private
  def comment_params
    params.require(:comment).permit(:text, :prototype_id).merge(user_id: current_user.id)
  end
end
