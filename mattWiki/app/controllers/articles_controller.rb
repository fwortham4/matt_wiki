class ArticlesController < ApplicationController
  include SessionHelper

  def new
    @article = Article.new
  end

  def show
    @article = Article.find(params[:id])
  end

  def create
    @article = Article.new(category_id: params["article"]["category_id"])
    @article.save
    @version = Version.new

    version_title = params["article"]["version"]["title"]
    version_content = params["article"]["version"]["content"]

    @version.title = version_title
    @version.content = version_content
    @version.author_id = current_user.id
    @version.article_id = @article.id
    @version.save
    @versions = @article.versions
    @version_count = @article.versions.count - 1
    @author = @version.author

    if @article.save
      @article
      @version
      @version_count
      render 'versions/show'
    else
      render 'new'
    end
  end

  def index
    @articles = Article.all
  end

  def update

  end

  def featured
    if authenticate_admin!
      selected = Article.find(params[:articles])
      selected.selected_featured
    end
  end

end
