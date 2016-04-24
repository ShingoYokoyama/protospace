class CommentsController < ApplicationController
  def create
    @prototype = Prototype.find(comment_params[:prototype_id])
    Comment.create(comment_params)
    @comments = @prototype.comments
  end

  private
  def comment_params
    params.require(:comment).permit(:text, :prototype_id).merge(user_id: current_user.id)
  end
end
