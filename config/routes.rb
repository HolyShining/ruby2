Rails.application.routes.draw do
  resources :delivers
  
  root 'pages#home'

  get 'pages/about'

  get 'pages/location'

  get 'task/index'

  get 'task/create'

  get 'task/new'

  post 'delivers/done'

  post 'delivers/approve'

  post 'delivers/cancel'

  devise_for :users, :controllers => { registrations: 'registrations' }
  get 'pages/home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
