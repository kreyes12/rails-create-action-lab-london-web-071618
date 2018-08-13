Rails.application.routes.draw do
  resources :students, only: [:index, :new, :create]
  get '/students', to: 'students#index'
  get '/students/new', to: 'students#new'
  get '/students/:id', to: 'students#show', as: 'student'

  post '/students', to: 'students#create'
end
