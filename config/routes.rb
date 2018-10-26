Rails.application.routes.draw do
  resources :card_in_columns
  resources :board_in_projects
  resources :columns
  resources :boards
  resources :cards
  resources :tasks
  resources :projects
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
