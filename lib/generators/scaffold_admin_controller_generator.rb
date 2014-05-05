#require 'rails/generators/named_base'

module SunshineRailsGenerators
  class ScaffoldAdminControllerGenerator
    def create_initializer_file
	    create_file "config/initializers/initializer.rb", "# Add initialization content here"
	  end
  end
end
