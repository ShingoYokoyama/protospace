module ApplicationHelper

  def user_like(user)
    Prototype.find(params[:id]).likes.find_by(user_id: user.id)
  end

  def user_like_exists?
    user_like(current_user) ? true : false
  end

end
