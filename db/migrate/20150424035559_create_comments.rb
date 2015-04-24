class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :subject
      t.text :body
      t.integer :user_id
      t.integer :pet_id

      t.timestamps
    end
  end
end
