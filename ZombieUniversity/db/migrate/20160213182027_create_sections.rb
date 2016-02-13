class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.string :name
      t.string :roomNumber
      t.references :professor, index: true, foreign_key: true
      t.references :course, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
