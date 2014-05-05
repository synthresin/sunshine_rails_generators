require 'rails/generators/named_base'
require 'rails/generators/resource_helpers'

module SunshineRailsGenerators
  class ScaffoldAdminControllerGenerator < Rails::Generators::NamedBase

  	namespace "su:scaffold_admin_controller"
  	source_root File.expand_path("../templates", __FILE__)
  	
	  # def copy_view_templates
	  #   #copy_file "initializer.rb", "config/initializers/#{file_name}.rb"
	  #   directory ".", "app/views/admin/#{plural_name}"
	  # end

	  include Rails::Generators::ResourceHelpers

    check_class_collision suffix: "Controller"

    # class_option :orm, banner: "NAME", type: :string, required: true,
    #                    desc: "ORM to generate the controller for"

    # argument :attributes, type: :array, default: [], banner: "field:type field:type"

    def create_controller_files
      template "controller.rb", File.join('app/controllers', controller_class_path, "#{controller_file_name}_controller.rb")
    end

    # hook_for :template_engine, :test_framework, as: :scaffold

    # Invoke the helper using the controller name (pluralized)
    # hook_for :helper, as: :scaffold do |invoked|
    #   invoke invoked, [ controller_name ]
    # end


  end
end
