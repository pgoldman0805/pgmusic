Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root to: 'pages#home'
  get 'about', to:'pages#about'
  get 'calendar', to:'pages#calendar'
  resources :contacts, only: :create
  get 'contact-paul', to:'contacts#new', as:'new-contact'
  get 'booking', to:'pages#booking'
  get 'songlist', to: 'pages#songlist'
  get 'photos', to: 'pages#photos'
  get 'video', to: 'pages#video'
  get 'lessons',to: 'pages#lessons'
end
