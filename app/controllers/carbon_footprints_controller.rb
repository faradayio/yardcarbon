class CarbonFootprintsController < ApplicationController
  # Whatever layout is used for the "HTTP Monitoring" lightbox
  layout 'thickbox'
  
  # The native EngineYard Environment object, e.g. @environment
  before_filter :set_environment
  
  # /environments/XYZ/carbon_footprint
  def show
    @api_key = '7093c926cffc1afcdd389b5c18412e93'                                             # your api key (this is real)
    @carrier = @environment.carrier                                                           # 'amazon' or 'terremark', etc.
    @instance_classes_and_durations = @environment.instances.inject({}) do |memo, instance|
      instance_class = instance.instance_class                                                # 'm1.large'
      memo[instance_class] ||= 0 
      memo[instance_class] += instance.hours * 60 * 60                                        # seconds
      memo
    end
  end
end
