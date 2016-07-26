Rails.application.routes.draw do
  devise_for :users

  root "stocks#welcome"
  get "stocks/" => "stocks#index", as: :stocks
  # get "users/" => "users#index"

  get "portfolios/" => "portfolios#index", as: :portfolios
  get "portfolios/new" => "portfolios#new", as: :new_portfolio
  get "portfolios/:id/edit" => "portfolios#edit", as: :edit_portfolio
  patch "portfolios/:id" => "portfolios#update", as: :portfolio
  post "portfolios/" => "portfolios#create"
  delete "portfolios/:id" => "portfolios#destroy", as: :delete_portfolio

end
