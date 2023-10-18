Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  devise_for :admins, controllers: {
    sessions: "admin/sessions"
  }

  devise_for :end_users, controllers: {
  registrations: "public/registrations",
    sessions: 'public/sessions'
  }

  scope module: :public do
    root to: "homes#top"
    get "about" => "homes#about"
    resources :cosmetics, only: [:index, :show, :edit, :create, :update, :destroy] do
      get "mypost"
      get "mylist"
      get "draft"
    end

    resources :end_users, only: [:show, :update] do
      get "mypage"
      get "confirm_withdraw"
      patch "withdraw"
    end

    get "notice" => "nofications#notice"
  end

  namespace :admin do
    root to: "homes#top"
    resources :cosmetics, only: [:index, :show, :edit, :update, :destroy]
    resources :categories, only: [:index, :create, :update, :destroy]
    resources :end_users, only: [:index, :show, :edit, :update]
    get "notice" => "nofications#notice"
  end


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
