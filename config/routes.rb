Rails.application.routes.draw do
  get 'pages/about'
  root 'pages#home'
  resources :articles
end
