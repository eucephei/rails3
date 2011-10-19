class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :name
      t.text :content
      t.string :author_name
      t.date :published_on

      t.timestamps
    end
  end
end
