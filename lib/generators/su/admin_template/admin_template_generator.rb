require 'rails/generators/base'
require 'rails/generators/resource_helpers'

module SunshineRailsGenerators
  class AdminTemplateGenerator < Rails::Generators::Base

  	namespace "su:admin_template"
  	source_root File.expand_path("../templates", __FILE__)

  	def create_root_folder
      empty_directory "app/views/admin/application"
    end
  	
    def create_admin_template
      template "_flash.html.erb", File.join('app/views/admin/application', "_flash.html.erb")
    end

  end
end
