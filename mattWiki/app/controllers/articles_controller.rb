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
    # @version = Version.new
    # @article.update(:version_attributes => {:title => :title})
    # @article.update(:version_attributes => {:content => :content})
    # # @version = Version.new(version_params)
    # @version.article_id = @article.id
    # @version.save

    # @article.author_id = current_user.id
    @versions = @article.versions
    @version_count = @article.versions.count - 1
    @author = @version.author
    if @article.save
      # @version = Version.new(version_params)
      # @version.author_id = current_user.id
      # @version.article_id = @article.id
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

  # private
  # def version_params
  #   params.require(:article).permit(:version_attributes[:title, :content])
  # end
  # def article_params
  #   params.require(:article).permit(:category_id)
  # end
  # def version_params
  #   params.require(:version).permit(:title, :content)
  # end
end
