Rails.application.routes.draw do
  resources :drops
  resources :contato, only: [:create]

  root to: 'pages#home'

  get '/testemail', to: 'contato#teste'

  # Routing for download files from folder files
  match 'download/:filename', to: 'files#download', as: 'download', via: :get

  Rails.application.routes.draw do
    get "/:page" => "pages#show"
  end

  Rails.application.routes.draw do
    get "/areas/:area" => "pages#areas"
  end
end
