module ApplicationHelper
  def main_image
    @prototype.upload_images.main.first
  end

  def sub_images
    @prototype.upload_images.sub
  end

  def prototype_user
    @protype.user
  end

  def prototype_images
    @prototype.upload_images
  end

  def user_like_exists?
    @prototype.user_like(current_user) ? true : false
  end

end
