class AddMoreMetasToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :username, :string
    add_column :users, :bio, :text
    add_column :users, :telephone, :string
  end
end
