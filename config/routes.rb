Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'posts#index', as: 'home'

  get 'about' => 'pages#about', as: 'about'

  get 'queries' => 'searches#queries', as: 'queries'
  get 'results' => 'searches#results', as: 'results'

  get 'favorite_posts' => 'favorite_posts#index', as: 'favorite_posts'

  resources :posts

  resources :favorite_posts, only: [:create, :destroy]

end
