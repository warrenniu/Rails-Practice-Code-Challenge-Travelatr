Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/bloggers', to: 'bloggers#index', as: "bloggers"
  get '/bloggers/:id', to: 'bloggers#show', as: "blogger"
  get '/destinations', to: 'destinations#index', as: "destinations"
  get '/destinations/:id', to: 'destinations#show', as: "destination"
  get '/posts/new', to: 'posts#new', as: "new_post"
  post '/posts/', to: 'posts#create'
  get '/posts/:id/edit', to: 'posts#edit', as: "edit_post"
  patch '/posts/:id', to: 'posts#update'
end
