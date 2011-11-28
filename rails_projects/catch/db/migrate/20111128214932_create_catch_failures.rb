class CreateCatchFailures < ActiveRecord::Migration
  def change
    create_table :catch_failures do |t|
      t.text :message

      t.timestamps
    end
  end
end
