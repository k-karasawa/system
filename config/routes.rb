Rails.application.routes.draw do
  
  get "allowance/index" => "allowance#index"
  get "allowance/:id" => "allowance#show"

  post "employees/:id/destroy" => "employees#destroy"
  post "employees/update"=> "employees#update"
  post "employees/create" => "employees#create"
  get "employees/management" => "employees#management"
  get "employees/registration" => "employees#registration"
  get "employees/index" => "employees#index"
  get "employees/:id" => "employees#edit"
  post "employees/:id/update" => "employees#update"
  get "employees/:id/edit" => "employees#edit"
  
  
  get "licenses/index" => "licenses#index"
  get "licenses/show" => "licenses#show"
  get "licenses/new" => "licenses#new"
  post "licenses/new" => "licenses#new"
  post "licenses/create" => "licenses#create"
  post "licenses/:id/destroy" => "licenses#destroy"
  get "licenses/:id" => "licenses#show"
  post "licenses/:id/update" => "licenses#update"
  get "licenses/:id/edit" => "licenses#edit"

  
  get "posts/index" => "posts#index"
  get "posts/new" => "posts#new"
  get "posts/:id" => "posts#show"
  post "posts/create" => "posts#create"
  get "posts/:id/edit" => "posts#edit"
  post "posts/:id/update" => "posts#update"
  post "posts/:id/destroy" => "posts#destroy"

  
  get "users/index" => "users#index"
  get "users/:id" => "users#show"
  post "users/:id/add_administrator" => "users#add_administrator"
  post "users/:id/del_administrator" => "users#del_administrator"  
  post "users/create" => "users#create"
  get "signup" => "users#new"
  post "login" => "users#login"
  post "logout" => "users#logout"
  get "login_form" => "users#login"
  get "login" => "users#login_form"
  get "users/create" => "users#new"
  post "users/:id/destroy" => "users#destroy"
  
  
  root to: "users#login_form"

end
