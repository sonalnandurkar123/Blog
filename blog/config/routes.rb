Rails.application.routes.draw do
  get 'welcome/index'

   #resources :articles 

   root 'welcome#index'



  resources :articles do
    resources :comments
    collection do
  	  get :search #create a new path for searching
    end	
  end
end


 


