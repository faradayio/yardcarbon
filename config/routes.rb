Cloud::Application.routes.draw do
  map.resources :environments do
    map.resource :carbon_footprint, :only => :show
  end
end
