HelloWorld::Application.routes.draw do
  resources :sessions, only: [:new, :create, :destroy]
  resources :commenters
  get '/sign-in' => 'sessions#new', as: :sign_in
  delete '/sign-out' => 'sessions#destroy', as: :sign_out

  root "static#home"
  get "/about" => "static#about"
  get '/cat-pictures(/:number_of_cats)' => 'static#cats', as: :cat_pictures
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # These routes will be for signup. The first renders a form in the browse, the second will 
  # receive the form and create a user in our database using the data given to us by the user.
  get '/signup' => 'users#new', as: :sign_up
  post '/users' => 'users#create'

end
