class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :description
      t.integer :project_id
      t.integer :member_id

      t.timestamps
    end
  end
end
