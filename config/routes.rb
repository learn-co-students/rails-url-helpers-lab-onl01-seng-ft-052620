Rails.application.routes.draw do

  resources :students, only: [:index,:show]

  scope '/students/:id' do
    get '/activate', to: 'students#activate', as: :activate_student
  end

end
