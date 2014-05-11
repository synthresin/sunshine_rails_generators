require 'rails/generators'
require 'rails/generators/named_base'
require 'rails/generators/resource_helpers'

module SunshineRailsGenerators
  module Admin
    class ScaffoldViewGenerator < Rails::Generators::NamedBase

      namespace "su:admin:scaffold_view"
      source_root File.expand_path("../templates", __FILE__)

      include Rails::Generators::ResourceHelpers

      argument :attributes, type: :array, default: [], banner: "field:type field:type"

      def create_root_folder
        empty_directory File.join("app/views/admin", controller_file_path)
      end

      def copy_view_files
        available_views.each do |view|
          
          filename = [view, :html, :erb].compact.join(".")
          template filename, File.join("app/views/admin", controller_file_path, filename)
        end
      end

    protected

      def available_views
        %w(index edit new _form)
      end

    end
  end
  
end
