Rails.application.routes.draw do
  
  get 'static_pages/about'
  resources :vacancies 
  resources :events 
  resources :news 
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'amharic-home'=> "static_pages#amharic_home"
  get 'oromia-home' =>"static_pages#oromo_home"
  root to: "static_pages#home"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
