Rails.application.routes.draw do
  resources :events
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root to: 'pages#home'
  get 'about', to:'pages#about'
  get 'calendar', to:'pages#calendar'
  resources :contacts, only: :create
  get 'contact-paul', to:'contacts#new', as:'new-contact'
  resources :bookings, only: :create 
  get 'booking', to:'bookings#new', as: 'new-booking'
  get 'songlist', to: 'pages#songlist'
  get 'photos', to: 'pages#photos'
  get 'video', to: 'pages#video'
  get 'lessons',to: 'pages#lessons'
  get 'faq', to: 'pages#faq'
end
