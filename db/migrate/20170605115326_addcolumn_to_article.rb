class AddcolumnToArticle < ActiveRecord::Migration[5.1]
  def change
  add_column :articles, :created_by, :string 
  end
end
