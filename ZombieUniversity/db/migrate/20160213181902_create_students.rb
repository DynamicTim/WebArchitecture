class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.integer :number
      t.float :percentDecomposed
      t.float :numberOfLimbs

      t.timestamps null: false
    end
  end
end
