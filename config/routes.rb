Algo::Application.routes.draw do
  resources :news
  get "/pobierz", :to => "home#download", :as => :download
  get "/kontakt", :to => "home#contact", :as => :contact
  post "/kontakt", :to => "home#process_contact", :as => :process_contact
  root :to => "home#index"
end
