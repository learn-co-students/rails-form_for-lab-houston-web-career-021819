Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

resources :students, :school_classes

post '/school_classes/new', to: 'school_classes#create', as: 'new_class'
post '/students/new', to: 'students#create', as: 'newer_student'
end
