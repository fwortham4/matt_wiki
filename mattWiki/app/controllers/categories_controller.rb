class CategoriesController < ApplicationController
  def index
    @category = Category.search(params[:search])
    if @category
      redirect_to @category
    else
      redirect_to root_path
    end
  end

  def show
    @category = Category.find(params[:id])
    @article_number = @category.articles.length
    # article = @category.articles.first
  end
end
