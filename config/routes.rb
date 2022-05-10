Rails.application.routes.draw do

  get 'signup' => "users#formSignup"
  post 'users/signup' => "users#signup"
  get '/' => "home#index"

end
