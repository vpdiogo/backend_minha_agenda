class AddNameToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :password, :string
    add_column :users, :cpf, :string
    add_column :users, :phone, :string
  end
end
