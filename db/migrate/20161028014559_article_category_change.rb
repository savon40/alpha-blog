class ArticleCategoryChange < ActiveRecord::Migration
  def change
    add_column :article_categories, :category_id, :integer
    remove_column :article_categories, :caegory_id
  end
end
