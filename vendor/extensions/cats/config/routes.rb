Refinery::Core::Engine.routes.draw do

  # Frontend routes
  namespace :cats do
    resources :cats, :path => '', :only => [:index, :show]
  end

  # Admin routes
  namespace :cats, :path => '' do
    namespace :admin, :path => Refinery::Core.backend_route do
      resources :cats, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
