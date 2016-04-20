class LikesController < ApplicationController

  def create
    Like.create(like_params)
    @prototype  = Prototype.find(params[:prototype_id])
  end

  def destroy
    Like.find_by(like_params[:id]).destroy
    @prototype = Prototype.find(params[:prototype_id])
  end

  private
    def like_params
      params.permit(:prototype_id, :id).merge(user_id: current_user.id)
    end
end
