class CreatePageRequests < ActiveRecord::Migration
  def change
    create_table :page_requests do |t|
      t.string :path
      t.float :page_duration, :precision => 8, :scale => 4
      t.float :view_duration, :precision => 8, :scale => 4
      t.float :db_duration, :precision => 8, :scale => 4

      t.timestamps
    end
  end
end
