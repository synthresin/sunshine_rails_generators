require 'rails/generators/named_base'

module SunshineRailsGenerators
  class ScaffoldAdminControllerGenerator < Rails::Generators::NamedBase

  	namespace "su:scaffold_admin_controller"
  	source_root File.expand_path("../templates", __FILE__)
  	
	  def copy_initializer_file
	    copy_file "initializer.rb", "config/initializers/#{file_name}.rb"
	  end
  end
end
