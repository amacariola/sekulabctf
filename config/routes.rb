Rails.application.routes.draw do
  devise_for :users,
     controllers: {
	 sessions: 'users/sessions',
         registration: 'users/registrations'
     }
  resources :badges
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'home#index'
  get '/home' => "home#home", :as => :user_root
  get '/sekulab' => "home#sekulab"
  get '/challenges' => "home#challenges"
end
