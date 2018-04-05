Rails.application.routes.draw do

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  get 'pages/index'

  get 'pages/myLearning'

  get 'pages/myLocations'

  get 'pages/myAppUsage'
  
  get 'pages/myLearningTwo'

  get 'pages/myGoals'
  post 'pages/myGoals'

  get 'pages/weeklyOverview'

  get 'pages/myLocationsTwo'

  get 'pages/top-nav'

  get 'pages/side-nav'

  get 'pages/header'

  get 'pages/myLocationsThree'
 
  get 'pages/singleAppUsage'

  get 'researcher/overview'

  get 'researcher/userApps'

  get 'researcher/topicsOverview'

  get 'researcher/usersTable'

  get 'researcher/usageOverview'


  root 'sessions#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
