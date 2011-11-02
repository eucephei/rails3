class AddHostToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :host_id, :integer
  end
end
