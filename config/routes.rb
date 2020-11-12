Rails.application.routes.draw do
  root 'surfboards#index'
  resources :surfboards
end
