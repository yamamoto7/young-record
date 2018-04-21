Rails.application.routes.draw do
  devise_for :users
  get '/show' => 'users#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
