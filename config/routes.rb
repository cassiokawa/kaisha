Rails.application.routes.draw do
  get 'welcome/index'

  get 'welcome/about'

  get 'welcome/features'

  get 'welcome/contact'

  get 'welcome/faq'

  get 'welcome/pricing'

  resources :invoices
  
  root 'invoices#index'
  

end
