Rails.application.routes.draw do
  resources :choices do
    member do
     get :votes
    end
  end

  resources :categories do
    member do
      post :vote
    end
  end

  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


end
