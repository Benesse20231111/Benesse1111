class AddGradeToTodos < ActiveRecord::Migration[7.1]
  def change
    add_column :todos, :grade, :integer
    add_column :todos, :classroom, :string
    add_column :todos, :number, :integer
    add_column :todos, :place, :string
    add_column :todos, :discript, :text
    add_column :todos, :deadline, :datetime
  end
end
