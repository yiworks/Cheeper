Rails.application.routes.draw do
  get 'cheeps/index'

  root to: 'cheeps#index'
  resources :cheeps do
    collection do
      post :confirm
    end
  end
end