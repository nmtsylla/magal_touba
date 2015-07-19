class AddTypeArticleToArticle < ActiveRecord::Migration
  def change
    add_column :articles, :type_article, :integer
  end
end
