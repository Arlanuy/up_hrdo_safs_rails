Rails.application.routes.draw do
  get 'forms/eval_SL', to: 'forms#eval_SL'

  get 'forms/eval_DSF', to: 'forms#eval_DSF'

  get 'forms/eval_Sab', to: 'forms#eval_Sab'

  get 'forms/eval_SD', to: 'forms#eval_SD'

  get 'forms/eval_EP', to: 'forms#eval_EP'

  get 'forms/evaluation', to: 'forms#evaluation'

  get 'apply/studyleave', to: 'apply#studyleave'

  get 'apply/dsf', to: 'apply#dsf'

  get 'apply/sabbatical', to: 'apply#sabbatical'

  get 'apply/specialdetail', to: 'apply#specialdetail'

  get 'apply/enrollmentprivileges', to: 'apply#enrollmentprivileges'

  get 'web_pages/rsocalculator', to: 'web_pages#rsocalculator'

  root 'web_pages#landingpage'

  get '/landingpage',	to: 'web_pages#landingpage'

  get '/rsocalculator',	to: 'web_pages#rsocalculator'

  get 'contacts/contactus',		to: 'contacts#new'
  
  get 'contacts/create',		to: 'contacts#create'

  resources :apply
  resources :forms
  resources :contacts, only: [:new, :create]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
