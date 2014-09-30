Rails.application.routes.draw do
  
  resources :grades do
    resources :subjects
  end

end
