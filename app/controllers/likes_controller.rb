class LikesController < ApplicationController

  def create
    @like = Like.create(create_params)
    @prototype  = @like.prototype
    render template: :prototype/show(@prototype)
  end

  def destroy
    @like = Like.find_by(user_id: current_user.id, prototype_id: params[:id])
    @like.destroy
  end

  private
    def create_params
      params.permit(:prototype_id).merge(user_id: current_user.id)
    end
end
