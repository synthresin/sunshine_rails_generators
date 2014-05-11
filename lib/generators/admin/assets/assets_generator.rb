require 'rails/generators/base'
require 'rails/generators/resource_helpers'

module SunshineRailsGenerators
  module Admin
    class AssetsGenerator < Rails::Generators::Base

      namespace "su:admin:assets"
      source_root File.expand_path("../templates", __FILE__)
      
      def create_base_asset_files
        template "admin.js", File.join('app/assets/javascripts', "admin.js")
        template "admin.css", File.join('app/assets/stylesheets', "admin.css")
      end

      def add_initializer
        template "assets.rb", File.join('config/initializers', "assets.rb")
      end

      def create_admin_asset_directory
        empty_directory 'app/assets/javascripts/admin'
        empty_directory 'app/assets/stylesheets/admin'
      end

      def create_admin_style
        template "admin_style.scss", File.join('app/assets/stylesheets/admin', "style.scss")
      end

    end
  end
    
end
