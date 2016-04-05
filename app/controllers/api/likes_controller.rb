class LikesController < ApplicationController
    before_action :set_like, only: :destroy

  def create
    binding.pry
    @like = Like.create(create_params)
    @prototype  = @like.prototype
  end
  def destroy
    @like.destroy
    @prototype = Prototype.find(@like.prototype_id)
  end

  private
    def create_params
      params.permit(:prototype_id).merge(user_id: current_user.id)
    end

    def set_like
      @like = Like.find_by(user_id: current_user.id, prototype_id: params[:id])
    end
end
