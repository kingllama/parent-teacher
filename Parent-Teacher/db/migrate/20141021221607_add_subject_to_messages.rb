class AddSubjectToMessages < ActiveRecord::Migration
  def change
    add_column :messages, :subject_line, :string
  end
end
