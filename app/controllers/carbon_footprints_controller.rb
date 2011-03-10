class CarbonFootprintsController < ApplicationController
  layout 'thickbox' # Whatever layout is used for the "HTTP Monitoring" lightbox
  
  respond_to do |wants|
    wants.js do
      @environment = Environment.find(params[:environment_id])
      @title = 'Carbon footprint' # Assuming ivar name
      
      @carrier = @environment.carrier.name # 'ec2'
      @instances = @environment.instances.inject({}) do |memo, instance|
        memo[instance.instance_type] ||= 0 # 'm1.large'
        memo[instance.instance_type] += instance.hours # 100 (hours since environment creation)
      end
    end
  end
end
