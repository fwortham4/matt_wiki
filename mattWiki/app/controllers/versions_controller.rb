class VersionsController < ApplicationController
  include SessionHelper
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

  def new
    @article = Article.find(params[:article_id])

    @category_array = Category.all
    # desired_category = Category.find(@article.category_id)
    # # @category_array.find(desired_category)
    # turtle_index = @category_array[index[@article.category_id]]
    # @category_array.delete_at(turtle_index - 1)
    # @category_array.insert(0, desired_category)
    # p "************************"
    # p @category_array
    @version1 = Version.find(@article.versions.last.id)
    p "***********************************"
    p @version1
    @version = Version.new
    # this is our issue currently. we need this to get the info from the previous version to edit it but also we need to change the version id in order for it to save as a new version rather than override the current one.

    # 9:23pm. Morale is low. Brain capacity is being tested. Weve lost two devs. Anca and Derick have jumped ship. All that remains is team WIKI and ALex aka Jack Noble aka delicious dinner. We plan to use the hot plate to crisp his outter layer. Seasonings have been provided from CVS.

    # 9:24pm Alex has grown suspicious. It seems like hes trying to leave. Forrest is working on a blockade to all exits. GPS lines have been cut to prevent him from gaining aid.

    # 9:25 Fuck i need to go home
  end

  def create

    @article = Article.find(params[:article_id])
    @version = Version.new
    @version.article_id = @article.id
    version_title = params["version"]["version"]["title"]
    version_content = params["version"]["version"]["content"]
   @version.title = version_title
   @version.content = version_content
   @version.author_id = current_user.id

   @version_count = @version.article.versions.count - 1
    if @version.save
      @version_count
      render 'versions/show'
    else

      render 'new'
    end
  end
end
