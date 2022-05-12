Rails.application.routes.draw do
  
  get 'users/shop' => "toko#formShop"
  get "toko/:id" => "toko#myShop"
  post "toko/create" => "toko#create"
  get '/' => "home#index"

  get 'signup' => "users#formSignup"
  get 'login' => "users#formLogin"
  get 'logout' => "users#logout"
  post 'users/login' => "users#login"
  post 'users/signup' => "users#create"

end
