class AddEmailAndGpaToStudents < ActiveRecord::Migration
  def change
    add_column :students, :email, :string
    add_column :students, :gpa, :float
  end
end
