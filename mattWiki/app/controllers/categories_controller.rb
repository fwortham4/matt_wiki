class CategoriesController < ApplicationController
  def show
    @category = Category.find(params[:id])
    @article_number = @category.articles.length
    article = @category.articles.first
  end
end
