Rails.application.routes.draw do
  
  root to: 'users#show'
  devise_for :users 
  
  resources :users, only: :show do 
	resources :contacts, except: [:show, :index]
  end
  
  get '*path', to: redirect('/')
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
