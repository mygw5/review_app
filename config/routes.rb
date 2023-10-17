Rails.application.routes.draw do
  namespace :public do
    get 'homes/top'
    get 'homes/about'
  end
  namespace :public do
    get 'comments/create'
    get 'comments/destroy'
  end
  namespace :public do
    get 'cosmetics/index'
    get 'cosmetics/edit'
    get 'cosmetics/show'
    get 'cosmetics/favorite'
  end
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  devise_for :admins, controllers: {
    sessions: "admin/sessions"
  }

  devise_for :end_users, controllers: {
  registrations: "public/registrations",
    sessions: 'public/sessions'
  }

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
