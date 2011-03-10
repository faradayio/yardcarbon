class CarbonFootprintsController < ApplicationController
  layout 'thickbox' # Assuming this is how this is handled
  
  respond_to do |wants|
    wants.js do
      @title = 'Carbon footprint' # Assuming ivar name
      # These should be pulled from the environment we're looking at.
      @carrier = 'ec2'
      @instance_class = 'm1.large'
      @duration = 100
    end
  end
end
