Rails.application.routes.draw do
  root to: 'pages#home'

  Rails.application.routes.draw do
    get "/:page" => "pages#show"
  end

end
