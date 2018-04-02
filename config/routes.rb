Rails.application.routes.draw do
  get 'task/index'

  get 'task/create'

  get 'task/new'

  devise_for :users
  get 'pages/home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
