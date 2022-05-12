class CreateTokos < ActiveRecord::Migration[7.0]
  def change
    create_table :tokos do |t|
      t.string :id_user
      t.string :nama_toko

      t.timestamps
    end
  end
end
