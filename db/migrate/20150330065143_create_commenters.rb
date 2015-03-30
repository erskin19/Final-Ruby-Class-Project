class CreateCommenters < ActiveRecord::Migration
  def change
    create_table :commenters do |t|
      t.string :name
      t.text :comment
      t.boolean :has_cat
      t.datetime :created

      t.timestamps
    end
  end
end
