class AddStatusAndDurationToTask < ActiveRecord::Migration[5.1]
  def change
    add_column :tasks, :status, :boolean
    add_column :tasks, :duration, :string
  end
end
