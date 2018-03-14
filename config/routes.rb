Rails.application.routes.draw do
  #devise_for :models
  get 'project/index'

  get 'project/create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
