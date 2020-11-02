Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/bloggers', to: 'bloggers#index', as: "bloggers"
  get'/bloggers/new', to: 'bloggers#new', as: "new_blogger"
  get '/bloggers/:id', to: 'bloggers#show', as: "blogger"
  post '/bloggers', to: 'bloggers#create'
  get '/destinations', to: 'destinations#index', as: "destinations"
  get '/destinations/:id', to: 'destinations#show', as: "destination"
  resources :saves, controller: "posts"
  get '/posts/new', to: 'posts#new', as: "new_post"
  get '/posts/:id', to: 'posts#show', as: "post"
  post '/posts/', to: 'posts#create'
  get '/posts/:id/edit', to: 'posts#edit', as: "edit_post"
  patch '/posts/:id', to: 'posts#update'

end
