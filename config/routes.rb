Rails.application.routes.draw do
  resources :employees
  resources :companies do
    collection {post :import}
  end


  devise_for :users, path_names: { sign_in: 'login', sign_out: 'logout', password: 'secret', confirmation: 'verification', unlock: 'unblock', registration: 'register', sign_up: 'sign_up' }
  
  devise_scope :user do
    get 'login', to: 'devise/sessions#new'
    get 'sign_up', to: 'devise/registrations#new' 
    get 'logout', to: 'devise/sessions#destroy' 
  
  end


  get 'welcome/index'

  get 'welcome/about'

  get 'welcome/features'

  get 'welcome/contact'

  get 'welcome/faq'

  get 'welcome/pricing'

  resources :invoices
  
  root 'invoices#index'
  

end
