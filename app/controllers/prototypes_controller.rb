class PrototypesController < ApplicationController
  before_action :set_prototype, only:[:edit, :update, :show]

  def index
    @prototypes = Prototype.order("created_at DESC").page(params[:page]).per(8)
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

  private
    def create_params
      params.require(:prototype).permit(:title, :catchcopy, :concept, :user_id)
    end

    def set_prototype
      @prototype = Prototype.find(params[:id])
    end
end
