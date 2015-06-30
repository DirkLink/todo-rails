class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.belongs_to :list, index: true, foreign_key: true
      t.string :content
      t.datetime :completed_at

      t.timestamps null: false
    end
  end
end
