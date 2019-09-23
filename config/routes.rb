Rails.application.routes.draw do
  get 'home/index'
  root 'home#index'
  get 'about' => 'articles#about'
  resources :articles
  resource :contacts, only: [:new, :create], path_names: { :new => ''}
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
