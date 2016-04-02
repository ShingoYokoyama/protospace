class PrototypesController < ApplicationController


  def index
    @prototypes = Prototype.order(created_at: :DESC)
  end

  def new
    @prototype = Prototype.new
    @prototype.upload_images.build
  end

  def create
    @prototype = current_user.prototypes.new(create_params)
    if @prototype.save
      redirect_to root_path
    else
      render action: :new
    end
  end

  private
    def create_params
      params.require(:prototype).permit(:title, :catchcopy, :concept)
    end

end
