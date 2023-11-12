class CreateTodos < ActiveRecord::Migration[7.1]
  def change
    create_table :todos do |t|
      t.string :text
      t.subject :string
      t.grade :integer
      t.classroom :string
      t.number :integer
      t.place :string
      t.discript :text
      t.deadline :datetime
      t.timestamps
    end
  end
end
