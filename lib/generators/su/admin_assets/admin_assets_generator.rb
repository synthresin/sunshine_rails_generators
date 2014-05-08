require 'rails/generators/base'
require 'rails/generators/resource_helpers'

module SunshineRailsGenerators
  class AdminAssetsGenerator < Rails::Generators::Base

  	namespace "su:admin_assets"
  	source_root File.expand_path("../templates", __FILE__)
  	
    def create_base_asset_files
      template "admin.js", File.join('app/assets/javascripts', "admin.js")
      template "admin.css", File.join('app/assets/stylesheets', "admin.css")
    end

    def add_files_to_asset_pipeline
      # production.rb 에 추가하기
    end

    def create_admin_asset_directory
      empty_directory_with_keep_file 'app/assets/javascripts/admin'
      empty_directory_with_keep_file 'app/assets/stylesheets/admin'
    end

    def create_admin_style
      template "admin_style.scss", File.join('app/assets/stylesheets/admin', "style.scss")
    end

  end
end