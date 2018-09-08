Rails.application.routes.draw do
  devise_for :users
  get '/users/:id', to: 'users#show', as: 'user_show'
  get '/users/:id/bio/edit', to: 'bios#edit', as: 'bio_edit' 
  post '/users/:id/bio/edit', to: 'bios#update'

  resources :posts do
    resources :comments
  end

  root 'posts#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
