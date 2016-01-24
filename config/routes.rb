Rails.application.routes.draw do
  root "static_pages#home"

  get "/about", to: "static_pages#about"

  get "/bmi", to: "static_pages#bmi"
  post "/bmi", to: "static_pages#bmi"

  resources :contacts, only: [:index, :create]
  resources :posts

  namespace :admin do
    resources :contacts, except:[:new, :create, :destroy]
  end
end
