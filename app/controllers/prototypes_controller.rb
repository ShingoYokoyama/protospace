class PrototypesController < ApplicationController
before_action :set_prototype, only: [:show, :edit, :update, :destroy]

  def index
    @prototypes = Prototype.order(created_at: :DESC)
  end

  def show
    @like = Like.new
  end

  def new
    @prototype = Prototype.new
    @prototype.upload_images.build
  end

  def create
    @prototype = current_user.prototypes.new(prototypes_params)
    if @prototype.save
      render action: :index
    else
      render action: :new
    end
  end

  def edit
  end

  def update
    if @prototype.update(prototypes_params)
      render action: :index
    else
      render action: :edit
    end
  end

  def destroy
    binding.pry
    @prototype.destroy
    redirect_to action: :index
  end

  private
    def prototypes_params
      params.require(:prototype).permit({upload_images_attributes: [:name, :status, :id, :_destroy]},:title, :catthcopy, :concept)
    end

    def set_prototype
      @prototype = Prototype.find(params[:id])
    end

end
