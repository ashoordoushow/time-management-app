class AddFieldsToTasks < ActiveRecord::Migration[7.1]
  def change
    add_column :tasks, :priority, :integer
    add_column :tasks, :required_time, :integer
    add_column :tasks, :reminder, :boolean
  end
end
