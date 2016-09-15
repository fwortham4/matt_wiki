class CategoriesController < ApplicationController
  def show
    # @articles = Article.all
    @category = Category.find(params[:id])
  end
end
