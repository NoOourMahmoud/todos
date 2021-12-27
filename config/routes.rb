Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: "todos#index"

  resources :todos, only: [:index, :new, :create] do
    resources :completion, only: [:create, :destroy]
  end

  resources :sessions, only: [:new, :create]

end
