Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root to: 'pages#home'
  get 'about', to:'pages#about'
  get 'calendar', to:'pages#calendar'
  resources :contacts, only: :create
  get 'contact-paul', to:'contacts#new', as:'new-contact'
end
