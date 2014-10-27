class RemoveNotesFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :notes
  end
end
