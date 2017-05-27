Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    authenticated :user do
      root 'home#index', as: :autheticated_root
    end

    unauthenticated do
      root 'devise/sessions#new', as: :aunanthenticated_root
    end
  end
  
end
