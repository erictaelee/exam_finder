Rails.application.routes.draw do

  namespace :api do
    get "/proctoring_sessions" => "proctoring_sessions#index"
    post "/proctoring_sessions" => "proctoring_sessions#create"
    get "/proctoring_sessions/:id" => "proctoring_sessions#show"
    patch "/proctoring_sessions/:id" => "proctoring_sessions#update"
    delete "/proctoring_sessions/:id" => "proctoring_sessions#destroy"
  end
end
