class RemoveNumberFromCourses < ActiveRecord::Migration
  def change
    remove_column :courses, :number, :string
  end
end
