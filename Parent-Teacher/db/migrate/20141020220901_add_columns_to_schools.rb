class AddColumnsToSchools < ActiveRecord::Migration
  def change
      add_column :schools, :address, :string
      add_column :schools, :password_digest, :string
      add_column :schools, :email, :string

  end
end
