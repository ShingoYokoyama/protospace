class PrototypesController < ApplicationController
before_action :set_prototype, only: [:show, :edit, :update, :destroy]

  def index
    @prototypes = Prototype.order(created_at: :DESC)
  end

  def show
  end

  def new
    @prototype = Prototype.new
    @prototype.upload_images.build
  end

  def create
    @prototype = current_user.prototypes.new(prototypes_params)
    @prototypes = Prototype.order(created_at: :DESC)
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
      render action: :index
    else
      render action: :edit
    end
  end

  def destroy
    @prototype.destroy
    redirect_to action: :index
  end

  private
    def prototypes_params
<<<<<<< HEAD
      params.require(:prototype).permit( :title, :catthcopy, :concept, upload_images_attributes: [:name, :status, :id])
=======
      params.require(:prototype).permit(:title, :catthcopy, :concept,upload_images_attributes: [:name, :status, :prototype_id] )
>>>>>>> Like・コメント機能の実装
    end

    def set_prototype
      @prototype = Prototype.find(params[:id])
    end

end
