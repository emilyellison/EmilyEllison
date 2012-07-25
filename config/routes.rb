EmilyEllison::Application.routes.draw do
  
  root to: 'overview#index'
  
  get '/home' => 'overview#index'
  get '/about' => 'overview#about', as: :about

  get '/hire' => 'inquiries#new', as: :new_inquiry
  post '/hire' => 'inquiries#create'
  
  resources :blog_posts
  
  get '/sign_in' => 'sessions#new', as: :sign_in
  post '/sign_in' => 'sessions#create'
  get '/sign_out' => 'sessions#destroy', as: :sign_out
  
  get '/admin' => 'admin#index', as: :admin
end
