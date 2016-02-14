class AddSemesterToSections < ActiveRecord::Migration
  def change
    add_column :sections, :semester, :string
  end
end
