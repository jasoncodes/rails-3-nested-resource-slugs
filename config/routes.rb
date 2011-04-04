Example::Application.routes.draw do
  resources :accounts, :path => '' do
    resources :projects, :path => '', :except => [:index]
  end
end
