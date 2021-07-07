Rails.application.routes.draw do
  # get 'students/edit'

  # get 'students/index'

  # get 'students/show'

  # get 'students/new'

  # get 'school_classes/edit'

  # get 'school_classes/index'

  # get 'school_classes/show'

  # get 'school_classes/new'

  resources :students, only: [:index, :new, :show, :create, :edit, :update]
  resources :school_classes, except: [:destroy, :index] 
  # only: [:index, :new, :show, :create, :edit, :update]


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
