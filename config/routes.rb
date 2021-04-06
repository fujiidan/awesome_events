Rails.application.routes.draw do
  resources :events, only: %i[new create show edit update destroy] do
    resources :tickets, only: %i[new create destroy]
  end
  resource :retirements, only: %i[ew create]
  root "welcome#index"
  get "/auth/:provider/callback" => "sessions#create"
  delete "/logout" => "sessions#destroy"
  match "*oath" => "application#error404", via: :all
end
