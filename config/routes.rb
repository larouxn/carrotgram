Rails.application.routes.draw do
  resources :ideas
  resources :comments

  get 'pages/info'

  root to: redirect('/ideas')
end
