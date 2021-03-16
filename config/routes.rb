Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # Edit profil of user
  # Index and show for activities
  resources :categories, only: [] do
    resources :activities, only: [:index, :show]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :cabinets do
    resources :reservations, only: [:new, :create, :destroy]
  end
end
