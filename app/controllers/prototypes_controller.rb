class PrototypesController < ApplicationController
before_action :set_prototype, only: [:edit, :update]

  def index
    @prototypes = Prototype.order(created_at: :DESC)
  end

  def new
    @prototype = Prototype.new
    @prototype.upload_images.build
  end

  def create
    @prototype = current_user.prototypes.new(prototypes_params)
    if @prototype.save
      redirect_to root_path
    else
      render action: :new
    end
  end

  def edit
  end

  def update
    if @prototype.update(prototypes_params)
      redirect_to root_path
    else
      render action: :edit
    end
  end

  def destroy
    @prototype.destroy
    redirect_to root_path
  end

  private
    def prototypes_params
      params.require(:prototype).permit(:title, :catchcopy, :concept)
    end

    def set_prototype
      @prototype = Prototype.find(params[:id])
    end

end
