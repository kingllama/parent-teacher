class AddForeignKeyToEvents < ActiveRecord::Migration
  def change
   add_reference :events, :teacher
  end
end
