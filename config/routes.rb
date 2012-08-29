Blogger::Application.routes.draw do
   root :to => 'articles#index'
  devise_for :users

 
#get "tags/index"
 # get "tags/show"
get "articles/home"
get "articles/about_us"
get "articles/contact_us"
get "articles/blogger_information"
 resources :articles
 resources :comments
 resources :tags


match "/articles/:id" => "articles#new"
end
