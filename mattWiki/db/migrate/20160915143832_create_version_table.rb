class CreateVersionTable < ActiveRecord::Migration[5.0]
  def change
    create_table :versions do |t|
      t.string :title, :null => false
      t.text :content, :null => false
      t.integer :author_id, :null => false
      t.integer :article_id, :null => false

      t.timestamps(null: false)
    end
  end
end
