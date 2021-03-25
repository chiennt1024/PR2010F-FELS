class Admin::CategoriesController < Admin::AdminController
  before_action :set_category, only: %i[ show edit update destroy ]

  def index    
    @categories = Category.all
    @category = Category.new
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to admin_categories_path
      notice = 'Category was successfully created.'
    else
      redirect_to admin_categories_path
      flash[:danger] = 'Error' 
    end
  end

  def show

  end

  def edit

  end

  def update
    @category.update(category_params)
    flash[:success] = "Category updated"
    redirect_to admin_categories_path
  end

  def destroy
    @category.destroy
    flash[:success] = 'Category deleted'
    redirect_to admin_categories_path
  end

  private
    def set_category
      @category = Category.find(params[:id])
    end

    def category_params
      params.require(:category).permit(:category_name);
    end
end
