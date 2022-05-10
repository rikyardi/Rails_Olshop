class UsersController < ApplicationController

  def formSignup 
  end
  
  def formLogin
  end

  def create
    @user = User.new(email: params[:email], password: params[:password])
    if @user.save
      flash[:notice] = "You have signed up successfully!"
      redirect_to("/login")
    else
      flash[:notice] = "Failed to sign up!"
      redirect_to("/signup")
    end
  end

  def login
    @user = User.find_by(email: params[:email])
    if @user.password == params[:password]
      session[:user_id] = @user.id
      flash[:notice] = "You have logged in successfully!"
      redirect_to("/")
    else
      flash[:notice] = "Invalid email/password combination!"
      redirect_to("/signup")
    end
  end

  def logout
    session[:user_id] = nil
    flash[:notice] = "You have logged out successfully"
    redirect_to("/login")
  end

end
