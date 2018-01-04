Rails.application.routes.draw do
  get 'welcome/index'
  resources :articles do
    resource :comments
  end

  resources :todo_lists do
    member do
      patch :update_completed
    end
  end

  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
