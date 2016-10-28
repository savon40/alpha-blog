class CreateArticleCategories < ActiveRecord::Migration
  def change
    create_table :article_categories do |t|
        t.integer :article_id
        t.integer :caegory_id
    end
  end
end
