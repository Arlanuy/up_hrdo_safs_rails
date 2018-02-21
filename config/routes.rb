Rails.application.routes.draw do


  get 'evaluate/evaluation', to: 'evaluate#evaluation'

  get 'apply/studyleave', to: 'apply#studyleave'

  get 'apply/dsf', to: 'apply#dsf'

  get 'apply/sabbatical', to: 'apply#sabbatical'

  get 'apply/specialdetail', to: 'apply#specialdetail'

  get 'apply/enrollmentprivileges', to: 'apply#enrollmentprivileges'

  get 'web_pages/rsocalculator', to: 'web_pages#rsocalculator'

  root 'web_pages#landingpage'

  get '/landingpage', to: 'web_pages#landingpage'

  get '/rsocalculator', to: 'web_pages#rsocalculator'

  get 'contact/contactus',   to: 'contact#new'

  get 'contact/create',    to: 'contact#create'

  get 'evaluate/evaluation', to: 'evaluate#eval_SL'

  get 'evaluate/evaluation', to: 'evaluate#eval_DSF'

  get 'evaluate/evaluation', to: 'evaluate#eval_Sab'

  get 'evaluate/evaluation', to: 'evaluate#eval_SD'

  get 'evaluate/evaluation', to: 'evaluate#eval_EP'

  resources :apply
  resources :evaluate
  resources :contact, only: [:new, :create]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
