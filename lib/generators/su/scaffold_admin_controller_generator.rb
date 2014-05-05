require 'rails/generators/named_base'

module SunshineRailsGenerators
  class ScaffoldAdminControllerGenerator < Rails::Generators::NamedBase

  	namespace "su:scaffold_admin_controller"
  	
    def create_initializer_file
	    create_file "config/initializers/initializer.rb", "# Add initialization content here"
	  end
  end
end
