class AddTasksFinishedTodos < ActiveRecord::Migration[5.1]
  def change
    add_column :todos, :tasks, :string
    add_column :todos, :finished, :boolean
  end
end
