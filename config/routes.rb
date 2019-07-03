Rails.application.routes.draw do
  # short shallow nesting 
  resources :posts do
    resources :comments, shallow: true
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
