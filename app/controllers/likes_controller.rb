class LikesController < ApplicationController

  def create
    @like = Like.create(like_params)
    @prototype  = @like.prototype
    render "prototypes/show", locals: {id: @prototype.id}
  end

  def destroy
    Like.find(like_params[:id]).destroy
    @prototype = Prototype.find(params[:prototype_id])
    render "prototypes/show",  locals: {id: @prototype.id}
  end

  private
    def like_params
      params.permit(:id, :prototype_id).merge(user_id: current_user.id)
    end
end
