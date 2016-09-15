class ArticlesController < ApplicationController
  include SessionHelper

 def new
    @article = Article.new
    @categories = Category.all
    puts "**********************"
    p @categories
    puts "**********************"
  end

  def show
    @article = Article.find(params[:id])
  end



  def create
    # need to add errors
    @article = Article.new(article_params)
    @article.author_id = 1
    # @article.author_id = current_user.id
    if @article.save
      redirect_to @article
    else
      render 'new'
    end
  end

  def index
    @articles = Article.all
  end

  private
  def article_params
    params.require(:article).permit(:title, :content, :category_id)
    # maybe category ?
  end
end
