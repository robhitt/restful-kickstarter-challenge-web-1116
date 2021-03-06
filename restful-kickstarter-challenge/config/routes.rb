Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    get 'projects/', to: 'projects#index'
    get 'projects/new', to: 'projects#new', as: 'new_project'
    get 'projects/:id/edit', to: 'projects#edit', as: 'edit_project'
    get 'projects/:id', to: 'projects#show', as: 'project'
    delete 'projects/:id', to: 'projects#destroy'
    post 'projects', to: 'projects#create'
    patch 'projects/:id', to: 'projects#update'

end
