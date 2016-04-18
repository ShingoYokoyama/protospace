class LikesController < ApplicationController

  def create
    @like = Like.create(like_params)
    @prototype  = @like.prototype
    redirect_to :back
  end

  def destroy
    Like.find(params[:id]).destroy
    @prototype = Prototype.find(params[:prototype_id])
    redirect_to :back
  end

  private
    def like_params
      params.permit(:prototype_id).merge(user_id: current_user.id)
    end
end
