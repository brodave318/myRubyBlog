class CategoriesController < ApplicationController
  def index
  end

  def edit
  end

  def new
  end

  def create
    Category.create(category_params)
  end

  def show
  end

  private
    def category_params
      require_params(:category).permit(:name)
    end
end
