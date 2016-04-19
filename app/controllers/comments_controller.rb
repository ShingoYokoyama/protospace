class CommentsController < ApplicationController
  def create
    @comment = Comment.create(comment_params)
    redirect_to :back
  end

  private
  def comment_params
    params.require(:comment).permit(:text, :user_id, :prototype_id).merge(user_id: current_user.id)
  end
end
