Rails.application.routes.draw do
  
  resources :homeworks

  resources :grades do
    resources :subjects do
      resources :homeworks
    end
  end

end
