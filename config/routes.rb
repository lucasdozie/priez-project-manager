Rails.application.routes.draw do
  root to: "projects#index"
  get 'tasks/index'

  get 'tasks/create'

  get 'members/index'

  devise_for :users #model use instead of users
  get 'projects/index'

  get 'projects/create'
  post 'projects/create'
  get 'projects/delete'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end