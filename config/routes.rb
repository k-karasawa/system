Rails.application.routes.draw do

  get 'home/top' => "home#top"
  get "employees/index" => "employees#index"
  get "employees/:id" => "employees#show"

  
  get "licenses/index" => "licenses#index"
  get "licenses/show" => "licenses#show"
  get "licenses/new" => "licenses#new"
  post "licenses/new" => "licenses#new"
  post "licenses/create" => "licenses#create"
  post "licenses/:id/destroy" => "licenses#destroy"
  get "licenses/:id" => "licenses#show"
  post "licenses/:id/update" => "licenses#update"
  get "licenses/:id/edit" => "licenses#edit"

  
  get "posts/renew" => "posts#renew"
  get "posts/index" => "posts#index"
  get "posts/new" => "posts#new"
  get "posts/:id" => "posts#show"
  post "posts/create" => "posts#create"
  get "posts/:id/edit" => "posts#edit"
  post "posts/:id/update" => "posts#update"
  post "posts/:id/destroy" => "posts#destroy"

    
  post "users/create" => "users#create"
  get "signup" => "users#new"
  post "login" => "users#login"
  post "logout" => "users#logout"
  
  
  
  
  root to: "users#login_form"

end
