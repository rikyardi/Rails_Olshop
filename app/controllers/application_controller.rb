class ApplicationController < ActionController::Base
	before_action :set_current_user
	before_action :check_current_user_shop
	
	def set_current_user
		@current_user = User.find_by(id: session[:user_id])
	end

	def check_current_user_shop
		@user_shop = Toko.find_by(id_user: session[:user_id])
	end
end
