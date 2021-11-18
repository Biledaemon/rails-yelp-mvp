Rails.application.routes.draw do
  resources :restaurants do
    collection do
      get 'top', to: 'restaurants#top'
    end
  end
end
