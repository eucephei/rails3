class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.integer :project_id
      t.string :name
      t.datetime :completed_at

      t.timestamps
    end
  end
end
