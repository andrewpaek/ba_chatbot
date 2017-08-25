Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'application#home'
  get '/webhook', to: 'application#webhook'
  post '/webhook', to: 'application#receive_message'
end
