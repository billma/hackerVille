Hackerville::Application.routes.draw do

  devise_for :evengelists
  # homepage 
  root :to => 'api#home'
  get '/auth/github/callback', to: 'sessions#create'

end
