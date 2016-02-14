class AddCreditHoursAndLevelToCourses < ActiveRecord::Migration
  def change
    add_column :courses, :creditHours, :float
    add_column :courses, :level, :string
  end
end
