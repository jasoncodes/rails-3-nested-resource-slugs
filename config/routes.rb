Example::Application.routes.draw do
  resources :accounts do
    resources :projects
  end
end
