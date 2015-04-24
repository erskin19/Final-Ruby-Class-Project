class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.text :name
      t.text :species
      t.text :description

      t.timestamps
    end
  end
end
