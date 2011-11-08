class AddImportantToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :important, :boolean, :default => false, :null => false
  end
end
