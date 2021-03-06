require 'rails/generators'
require 'rails/generators/named_base'
require 'rails/generators/resource_helpers'

module SunshineRailsGenerators
  module Admin
    class ScaffoldControllerGenerator < Rails::Generators::NamedBase

      namespace "su:admin:scaffold_controller"
      source_root File.expand_path("../templates", __FILE__)

      include Rails::Generators::ResourceHelpers

      check_class_collision suffix: "Controller"

      class_option :orm, banner: "NAME", type: :string, required: true,
                         desc: "ORM to generate the controller for"

      argument :attributes, type: :array, default: [], banner: "field:type field:type"

      def create_controller_files
        template "controller.rb", File.join('app/controllers/admin', "#{controller_file_name}_controller.rb")
      end

      Rails::Generators.invoke "su:admin:scaffold_view"
      
    end
  end
  
end
