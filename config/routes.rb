NickbarthCa::Application.routes.draw do

  ActiveAdmin.routes(self)
  devise_for :admin_users, ActiveAdmin::Devise.config

  resources :category, :only => [:index]

  resources :posts, :only => [:index, :show] do
    collection do
      get "page/:page" => "posts#index"
    end
  end

  resources :categories, :only => [:index, :show] do
    collection do
      get ":id/page/:page" => "categories#show"
    end
  end

  resources :pages, :only => [:show], :path => "" do
    get ":page" => "pages#show"
  end

  root :to => 'posts#index'

end
