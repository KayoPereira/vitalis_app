class AddColunsToUsers < ActiveRecord::Migration[8.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :cpf, :string
    add_column :users, :phone, :string
    add_column :users, :address, :string
  end
end
