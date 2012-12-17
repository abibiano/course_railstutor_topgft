CourseProject::Application.routes.draw do
  root to: "posts#index"

<<<<<<< HEAD
	resources :posts, only: [:show]
=======
  resources :posts, only: [:new, :create, :show] do
  	resources :comments, only: [:new, :create]
  end
	
>>>>>>> 16d5cc02d844454824bca46133f2b3729a94b056
end
