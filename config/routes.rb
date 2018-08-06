Rails.application.routes.draw do
  #resources :users
  
  devise_for :employers, controllers: {
    sessions: 'employers/sessions',
    registrations: 'employers/registrations'
  }

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  
    
  resources :users , :only => [:show]
  resources :employers , :only => [:show]
  
  
  resources :contacs
  resources :job_alerts
  
  get 'employerdash/index'
  get 'userdash/index'
  get 'register' => 'shared#signup', as: :register

  resources :constituencies
  resources :towns
  resources :villages
  resources :sublocations
  resources :locations
  resources :wards
  resources :divisions
  resources :districts
  resources :counties
  get 'about_us' => 'about#about', as: :about
  get 'employers' => 'about#employers', as: :employers
  get 'faqs' => 'about#faqs', as: :faqs
  get 'contact' => 'about#contact', as: :contact

  mount Ckeditor::Engine => '/ckeditor'
  resources :branches
  resources :companies
  resources :job_categories
  resources :jobs do
    member do
      put "apply", to: "jobs#upvote"
      put "cancel", to: "jobs#downvote"
    end
  end

  resources :searches
  
	root 'home#index'
end
