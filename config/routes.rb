Rails.application.routes.draw do
  resources :topics
  # For details on the DSL available within this file, see
  root 'topics#index'
  resources:topics do
    member do
      post 'upvote'
    end
  end

end
