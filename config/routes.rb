EmilyEllison::Application.routes.draw do
  
  root to: 'overview#index'
  
  get '/home' => 'overview#index'
  get '/about' => 'overview#about', as: :about

end
