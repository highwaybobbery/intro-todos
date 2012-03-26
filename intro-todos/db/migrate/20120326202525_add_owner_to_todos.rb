class AddOwnerToTodos < ActiveRecord::Migration
  def change
    add_column :todos, :owner, :string
  end
end
