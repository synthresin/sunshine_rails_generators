require 'rails/generators/base'
require 'rails/generators/resource_helpers'

module SunshineRailsGenerators
  class AdminLayoutGenerator < Rails::Generators::Base

  	namespace "su:admin_layout"
  	source_root File.expand_path("../templates", __FILE__)
  	
    def create_admin_layout
      template "admin.html.erb.tt", File.join('app/views/layouts', "admin.html.erb")
    end

    protected

    def app_name
      File.basename(destination_root).tr('\\', '').tr(". ", "_")
    end
  end
end
