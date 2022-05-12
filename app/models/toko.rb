class Toko < ApplicationRecord
	validates :id_user, {presence: true, uniqueness: true}
	validates :nama_toko, {presence: true}
end
