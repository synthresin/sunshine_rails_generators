require 'rails/generators'
require 'rails/generators/named_base'
require 'rails/generators/resource_helpers'

module SunshineRailsGenerators
  class ScaffoldAdminViewGenerator < Rails::Generators::NamedBase

  	namespace "su:scaffold_admin_view"
  	source_root File.expand_path("../templates", __FILE__)
  	
	  # def copy_view_templates
	  #   #copy_file "initializer.rb", "config/initializers/#{file_name}.rb"
	  #   directory ".", "app/views/admin/#{plural_name}"
	  # end

	  include Rails::Generators::ResourceHelpers

    argument :attributes, type: :array, default: [], banner: "field:type field:type"

    def create_root_folder
      empty_directory File.join("app/views/admin", controller_file_path)
    end

    def copy_view_files
      available_views.each do |view|
        
        filename = filename_with_extensions(view, 'html.erb')
        template filename, File.join("app/views/admin", controller_file_path, filename)
        
      end
    end

  protected

    def available_views
      %w(index edit show new _form)
    end

    #hook_for :admin_application_controller#, as: :scaffold

    # Invoke the helper using the controller name (pluralized)
    # hook_for :helper, as: :scaffold do |invoked|
    #   invoke invoked, [ controller_name ]
    # end


  end
end
