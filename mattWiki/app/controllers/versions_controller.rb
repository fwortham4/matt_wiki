class VersionsController < ApplicationController

  def index
    @article = Article.find(params[:article_id])
    @versions = @article.versions
  end

  def show

    @article = Article.find(params[:article_id])
    @version = Version.find(params[:id])
    @versions = @article.versions
    @version_count = @article.versions.count - 1
    @author = @version.author

  end
end
