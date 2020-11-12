Rails.application.routes.draw do
  root 'board_app#index'
  resources :surfboards
end
