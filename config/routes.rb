Rails.application.routes.draw do
  root 'surfboards#index'
  resources :board_app
end
