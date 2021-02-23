Rails.application.routes.draw do
  resources :drops
  resources :contato, only: [:create]

  root to: 'pages#home'

  get '/testemail', to: 'contato#teste'

  # Routing for download files from folder files
  match 'download/:filename', to: 'files#download', as: 'download', via: :get

  get "/:page", to: "pages#show"
  get "/cases/:name", to: "cases#show"

  get "/servicos/:servico", to: "pages#servicos"
end
