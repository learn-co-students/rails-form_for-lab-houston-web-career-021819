Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
resources :students 
resources :school_classes 
post '/school_classes/new', to: 'school_classes#create', as: 'new'
post '/students/new', to: 'students#create', as: 'create_new_student'  #check rails routes and make sure route names are different!
end 
     