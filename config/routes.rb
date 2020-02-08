Rails.application.routes.draw do
  # get 'users/show'
  # devise_for :users
    devise_for :users, controllers: {
        sessions:      'users/sessions',
        passwords:     'users/passwords',
        registrations: 'users/registrations'
    }
    root to: "home#top"
    resources :books
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  # post '/books/:id', to: 'books#show', as :"book"
  get "home/about",to:"home#about"
end
