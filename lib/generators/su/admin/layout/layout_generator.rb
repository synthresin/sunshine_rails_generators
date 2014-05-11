require 'rails/generators/base'
require 'rails/generators/resource_helpers'

module SunshineRailsGenerators
  module Admin
    class LayoutGenerator < Rails::Generators::Base

      namespace "su:admin:layout"
      source_root File.expand_path("../templates", __FILE__)
      
      def create_admin_layout
        template "admin.html.erb.tt", File.join('app/views/layouts', "admin.html.erb")
      end

      protected

      def app_name
        File.basename(destination_root).tr('\\', '').tr(". ", "_")
      end

      def app_const_base
        app_name.gsub(/\W/, '_').squeeze('_').camelize
      end

      def app_const_base_upcased
        app_name.gsub(/\W/, '_').squeeze('_').upcase
      end

      alias :camelized :app_const_base
      alias :upcased :app_const_base_upcased
    end
  end
end
