class CarbonFootprintsController < ApplicationController
  respond_to do |wants|
    wants.js do
      # These should be pulled from the environment we're looking at.
      @carrier = 'ec2'
      @instance_class = 'm1.large'
      @duration = 100
    end
  end
end
