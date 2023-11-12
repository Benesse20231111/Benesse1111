class AddSubjectToTodos < ActiveRecord::Migration[7.1]
  def change
    add_column :todos, :subject, :string
  end
end
