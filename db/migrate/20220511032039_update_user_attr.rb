class UpdateUserAttr < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :nama, :string
    add_column :users, :alamat, :string
    add_column :users, :no_telp, :string
  end
end
