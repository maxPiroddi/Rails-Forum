Rails.application.routes.draw do
  # Devise GEM will automatically generate the necessary routes
  devise_for :users

  # As comments belong to messages, we will use nested routes
  resources :messages do
    resources :comments
  end
  
  root "messages#index"
end
