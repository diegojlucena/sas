module NavigationHelpers
  # Put helper methods related to the paths in your application here.

  def root_path
    "/"
  end
  
  def assets_path(asset=nil)
    if asset
      "/assets/#{asset.to_param}"
    else
      "/assets/"
    end
  end
end

RSpec.configuration.include NavigationHelpers, :type => :acceptance
