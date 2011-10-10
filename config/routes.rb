NickbarthCa::Application.routes.draw do
  ActiveAdmin.routes(self)
  devise_for :admin_users, ActiveAdmin::Devise.config

  resources :category, :only => [:show]

  resources :posts, :only => [:index, :show] do
    collection do
      get "page/:page" => "posts#index"
    end
  end

  resources :pages, :only => [:show], :path => "" do
    get ":page" => "pages#show"
    collection do 
      get ":name" => "pages#show", :as => :section
      get ":about" => "pages#show", :as => :about
      get ":work" => "pages#show", :as => :work
    end
  end

  root :to => 'posts#index'

end
