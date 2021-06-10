Rails.application.routes.draw do
  devise_for :users,
     controllers: {
               registration: 'users/registrations',
	       sessions: 'users/sessions'
     }
  resources :challenge
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'home#index'
  get '/home' => "home#home", :as => :user_root
  get '/sekulab' => "home#sekulab"
  get '/ctf' => "home#ctf"
  get '/challenges' => 'challenge#challenges'
  get '/user' => 'home#user'
  get 'submit_answer', to: 'challenges#submit'
end
