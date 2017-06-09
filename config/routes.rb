Rails.application.routes.draw do
 
  devise_for :users
resources :books do
	resources :comments
end


resources :blogs do
	resources :comments
end

resources :products do
	resources :comments
end

resources :articles do
	resources :comments
end

get 'welcome/index'
root 'welcome#index'
post '/rakesh' => 'articles#rakesh'

resources :categories
resources :books


resources :users do
  resources :books
end

	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
