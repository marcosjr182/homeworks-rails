Rails.application.routes.draw do

  resources :grades do
    resources :subjects do
      resources :homeworks
    end
  end

  root :to => redirect('/grades')

end
