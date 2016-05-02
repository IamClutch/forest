Rails.application.routes.draw do



resources :users, only: [:new, :create]
resources :products do
  resources :reviews, only: [:show, :create, :destroy]
end
resources :sessions, only: [:new, :create, :destroy]

end
