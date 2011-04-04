Example::Application.routes.draw do
  resources :accounts, :path => ''
  resources :accounts, :path => '', :only => [] do
    resources :projects, :path => '', :except => [:index]
  end
end
