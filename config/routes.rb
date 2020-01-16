Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :bloggers, only: [:new, :show, :create, :index, :edit, :destroy, :update]
  
  resources :destinations, only: [:new, :show, :create, :index, :edit, :destroy, :update]

  resources :posts, only: [:new, :show, :create, :index, :edit, :destroy, :update]
end
