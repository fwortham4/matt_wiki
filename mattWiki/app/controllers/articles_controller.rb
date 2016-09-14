class ArticlesController < ApplicationController

 def new
    @article = Article.new
  end

  def show
    @article = Article.find(params[:id])
  end



  def create
    # need to add errors
    @article = Article.new(article_params)
    if @article.save
      redirect_to article_path
    # else
    #   render 'new'
    end
  end

  def index
    @articles = Article.all
  end

  private
  def article_params
    params.require(:article).permit(:title, :content)
    # maybe category ?
  end
end
