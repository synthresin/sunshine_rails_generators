require 'rails/generators/base'

#module SunshineRailsGenerators
  class ScaffoldAdminControllerGenerator < Rails::Generators::Base

  	namespace "su"

    def create_initializer_file
	    create_file "config/initializers/initializer.rb", "# Add initialization content here"
	  end
  end
#end
