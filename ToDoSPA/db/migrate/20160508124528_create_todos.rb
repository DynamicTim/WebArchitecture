class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.string :name
      t.text :notes

      t.timestamps null: false
    end
  end
end
