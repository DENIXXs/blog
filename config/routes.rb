Rails.application.routes.draw do
  get 'home/index'
  root 'home#index'
  get 'about' => 'articles#about'
  resources :articles do 
  	resources :comments
  end
  
  resource :contacts, only: [:new, :create], path_names: { :new => ''}
  
end
