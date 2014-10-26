class AddInfoToUsers < ActiveRecord::Migration
  def change
  end

  def self.up
    change_table :users do |t|
      t.attachment :evaluation
    end
  end

  def self.down
    remove_attachment :users, :avatar
  end
end
