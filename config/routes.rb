Rails.application.routes.draw do
  get 'apply/studyleave', to: 'apply#studyleave'

  get 'apply/dsf', to: 'apply#dsf'

  get 'apply/sabbatical', to: 'apply#sabbatical'

  get 'apply/specialdetail', to: 'apply#specialdetail'

  get 'apply/enrollmentprivileges', to: 'apply#enrollmentprivileges'

  root 'web_pages#landingpage'

  get '/landingpage',	to: 'web_pages#landingpage'

  get '/evaluation',	to: 'web_pages#evaluation'

  get '/rsocalculator',	to: 'web_pages#rsocalculator'

  get '/contactus',		to: 'web_pages#contactus'

  resources :apply

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
