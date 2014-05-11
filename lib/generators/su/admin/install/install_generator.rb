require 'rails/generators/base'
require 'rails/generators/resource_helpers'

module SunshineRailsGenerators
	module Admin
		class InstallGenerator < Rails::Generators::Base

	  	namespace "su:admin:install"
	  	source_root File.expand_path("../templates", __FILE__)

	    Rails::Generators.invoke "su:admin:assets"
	    Rails::Generators.invoke "su:admin:layout"
	    Rails::Generators.invoke "su:admin:template"
	    Rails::Generators.invoke "su:admin:application_controller"

	  end
	end
end
