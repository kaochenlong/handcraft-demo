Rails.application.routes.draw do
  get "/about", to: "static_pages#about"
  root "static_pages#home"

  resources :contacts, only: [:index, :create]

  namespace :admin do
    resources :contacts, except:[:new, :create, :destroy]
  end

end
