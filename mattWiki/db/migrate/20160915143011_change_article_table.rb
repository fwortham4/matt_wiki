class ChangeArticleTable < ActiveRecord::Migration[5.0]
  def change
    change_table :articles do |t|
      t.remove :title, :content, :author_id
    end
  end
end
