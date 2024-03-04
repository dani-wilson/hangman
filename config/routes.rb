Rails.application.routes.draw do
  root to: "main#index"

  post '/guess/:letter', to: 'main#guess', as: :guess
end
