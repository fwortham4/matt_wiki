class AdminsController < ApplicationController
  def show
    @articles = Article.all
  end
end
