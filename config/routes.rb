Rails.application.routes.draw do
  # get 'psycho_home/index'
  # resources :card_in_columns
  resources :columns
  resources :boards
  resources :cards
  resources :tasks
  resources :projects do
    resources :board_in_projects
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "boards#show", :id => '1'
  get :new_board_in_project, controller: :board_in_projects
end
