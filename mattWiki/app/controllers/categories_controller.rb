class CategoriesController < ApplicationController
  def show
    @articles = Articles.all
    @category = Category.find(params[:id])
  end
end
