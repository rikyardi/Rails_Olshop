class UsersController < ApplicationController

  def formSignup 
  end
  
  def signup
    @user = User.new(email: params[:email], password: params[:password])
    if @user.save
      session[:user_id] = @user.id
      flash[:notice] = "Berhasil Mendaftar!"
      redirect_to("/")
    else
      flash[:notice] = "Gagal Mendaftar"
      redirect_to("/signup")
    end
  end


end
