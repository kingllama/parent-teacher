class AddRecipientsToMessages < ActiveRecord::Migration
  def change
    add_column :messages, :recipients, :string
  end
end
