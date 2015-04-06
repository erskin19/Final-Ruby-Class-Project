class RemoveFieldNameFromTableName < ActiveRecord::Migration
  def change
    remove_column :commenters, :created, :datetime
  end
end
