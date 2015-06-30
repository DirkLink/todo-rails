Rails.application.routes.draw do
  devise_for :users

  resources :lists do
    resources :tasks do
      # patch '/lists/:list_id/tasks/:task_id/complete' => 'tasks#complete'
      patch :complete
    end
  end

  root to: 'lists#index'
end
