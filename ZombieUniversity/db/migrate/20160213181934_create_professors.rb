class CreateProfessors < ActiveRecord::Migration
  def change
    create_table :professors do |t|
      t.string :name
      t.integer :number
      t.float :numberOfBrainsEaten

      t.timestamps null: false
    end
  end
end
