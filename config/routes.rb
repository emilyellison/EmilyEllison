EmilyEllison::Application.routes.draw do
  
  root to: 'overview#index'
  
  get '/home' => 'overview#index'
  get '/about' => 'overview#about', as: :about

  get '/hire' => 'inquiries#new', as: :new_inquiry
  post '/hire' => 'inquiries#create'

end
