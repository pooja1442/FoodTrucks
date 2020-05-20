Rails.application.routes.draw do
  root 'home#index'
  devise_for :users , controllers: {
        omniauth_callbacks:  'users/omniauth_callbacks'
      }
  resources :vendors  do
    resources :products , only: [:new , :create,  :edit , :update , :index]
  end
end
