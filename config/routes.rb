ToDo::Application.routes.draw do
  match('/', {:via => :get, :to => 'tasks#index'})
  match('tasks', {:via => :get, :to => 'tasks#index'})
  match('tasks/new', {:via => :get, :to => 'tasks#new'})
  match('tasks', {:via => :post, :to => 'tasks#create'})
  match('tasks/:id/edit', {:via => :get, :to => 'tasks#edit'})
  match('tasks/:id/mark', {:via => :get, :to => 'tasks#mark'})
  match('tasks/:id', {:via => [:patch, :put], :to => 'tasks#update'})
  match('tasks/:id', {:via => :delete, :to => 'tasks#destroy'})
end
