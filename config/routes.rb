Rails.application.routes.draw do
  resources :experiences do
  #->Prelang (voting/acts_as_votable)
  member do
    get "vote"
  end
end


  resources :certifications

  resources :educations

  resources :skills do
  #->Prelang (voting/acts_as_votable)
  member do
    get "vote"
  end
end


  resources :profiles do
  #->Prelang (voting/acts_as_votable)
  member do
    get "vote"
  end
end


  resources :job_posts

  resources :projects do
  #->Prelang (voting/acts_as_votable)
  member do
    get "vote"
  end
end


  resources :job_types

  resources :job_categories

  devise_for :users, controllers: {registrations: "users/registrations", sessions: "users/sessions", passwords: "users/passwords", omniauth_callbacks: "users/omniauth_callbacks"}, skip: [:sessions, :registrations]
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  root 'profiles#index'
  
  
  #->Prelang (user_login:devise/stylized_paths)
  devise_scope :user do
    get    "login"   => "users/sessions#new",         as: :new_user_session
    post   "login"   => "users/sessions#create",      as: :user_session
    delete "signout" => "users/sessions#destroy",     as: :destroy_user_session
    
    get    "signup"  => "users/registrations#new",    as: :new_user_registration
    post   "signup"  => "users/registrations#create", as: :user_registration
    put    "signup"  => "users/registrations#update", as: :update_user_registration
    get    "account" => "users/registrations#edit",   as: :edit_user_registration
  end

end
