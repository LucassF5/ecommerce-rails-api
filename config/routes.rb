Rails.application.routes.draw do

  resources :categories
  resources :produtos do
    resources :categories, only: [:show]
  end

end
