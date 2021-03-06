Rails.application.routes.draw do
  root to: 'cheeps#home'

  resources :cheeps do
    collection do
      post :confirm
    end
  end

  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :show, :edit, :update]
  resources :favorites, only: [:create, :destroy, :index]
  resources :contacts, only: [:new, :create,:index, :destroy] do
    collection do
      post :confirm
    end
  end


  mount LetterOpenerWeb::Engine, at: "/letter_opener"

end
