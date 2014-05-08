require 'rails/generators/base'
require 'rails/generators/resource_helpers'

module SunshineRailsGenerators
  class AdminLayoutGenerator < Rails::Generators::Base

  	namespace "su:admin_layout"
  	source_root File.expand_path("../templates", __FILE__)
  	
    def create_admin_layout
      template "admin.html.erb", File.join('app/views/layouts', "admin.html.erb")
    end
  end
end
