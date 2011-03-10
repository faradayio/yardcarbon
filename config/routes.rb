Cloud::Application.routes.draw do
  # you already have /environments/:environment_id/monitored_urls
  # so we're adding  /environments/:environment_id/carbon_footprint
  resources :environments do
    # [...]
    resource :carbon_footprint, :only => :show
    # [...]
  end
end
