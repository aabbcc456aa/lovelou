class AddColumnToUser < ActiveRecord::Migration
  def change
    add_column :users, :login, :string
    add_column :users, :name, :string
    add_column :users, :age, :string
    add_column :users, :sex, :string
  end
end
