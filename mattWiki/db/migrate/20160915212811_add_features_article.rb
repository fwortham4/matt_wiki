class AddFeaturesArticle < ActiveRecord::Migration[5.0]
  def change
    add_column :articles ,:featured, :boolean
  end
end
