class TokoController < ApplicationController
  def index
  end

  def formShop
  end

  def create
    @toko = Toko.new(
      id_user: @current_user.id,
      nama_toko: params[:nama],
      deskripsi: params[:deskripsi],
      toko_images: "default_img.jpg"
      )
    if @toko.save
      flash[:notice] = "Your shop has been created"
      redirect_to("/toko/#{@toko.id}")
    else
      redirect_to("users/shop")
    end
  end

  def myShop
    @toko = @user_shop
  end
end
