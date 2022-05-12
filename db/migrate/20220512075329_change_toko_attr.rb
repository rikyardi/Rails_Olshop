class ChangeTokoAttr < ActiveRecord::Migration[7.0]
  def change
    add_column :tokos, :deskripsi, :string
    add_column :tokos, :toko_images, :string
  end
end
