class AdminsController < ApplicationController
  def show
    if authenticate_admin!
      @articles = Article.all
    end
  end
end
