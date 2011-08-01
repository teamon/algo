Algo::Application.routes.draw do
  resources :news
  get "/pobierz", :to => "home#download", :as => :download
  get "/kontakt", :to => "home#contact", :as => :contact
  root :to => "home#index"
end
