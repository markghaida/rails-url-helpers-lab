Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :students, only: [:index, :show] # how does it determine whether to send to index or show?
  get 'students/:id/activate', to: 'students#activate', as: 'activate_student' #I dont understand why we are using as:, and why it is pointing to "activate_student"

end
