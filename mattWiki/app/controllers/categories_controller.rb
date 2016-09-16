class CategoriesController < ApplicationController
  def show
    @category = Category.find(params[:id])
    @category.length =
  end
end
