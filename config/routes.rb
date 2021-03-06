Rails.application.routes.draw do
  # resources :apartments
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users


  get '*path', to: 'pages#protected', constraints: ->(request){ request.format.html? }
  get "protected", to: 'pages#protected', as: :protected
  root to: 'pages#unprotected'
  # root to: 'apartments#index'
end
