Rails.application.routes.draw do
  resources :proveedors
  resources :entradas
  resources :salidas
  resources :productos
  devise_for :users
	 get 'welcome/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
