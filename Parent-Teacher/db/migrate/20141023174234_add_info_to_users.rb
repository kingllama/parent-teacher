class AddInfoToUsers < ActiveRecord::Migration

  def self.up
    change_table :users do |t|
      t.attachment :evaluation
      t.string :emergency_contact_name
      t.string :emergency_contact_relation
    end
  end

  def self.down
    remove_attachment :users, :evaulation
    remove_column :users, :emergency_contact_name
    remove_column :users, :emergency_contact_relation
  end
end
