Rails.application.routes.draw do
  # shalliw nesting 
  resources :posts do
    resources :comments, only: [:index, :new, :create]
  end

  resources :comments, except: [:index, :new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
