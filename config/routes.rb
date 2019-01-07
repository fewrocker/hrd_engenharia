Rails.application.routes.draw do
  resources :drops
  root to: 'pages#home'

  match 'download/:filename', to: 'files#download', as: 'download', via: :get

  Rails.application.routes.draw do
    get "/:page" => "pages#show"
  end

  Rails.application.routes.draw do
    get "/areas/:area" => "pages#areas"
  end
end
