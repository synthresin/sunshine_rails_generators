require 'rails/generators/base'
require 'rails/generators/resource_helpers'

module SunshineRailsGenerators
  class AdminAssetsGenerator < Rails::Generators::Base

  	namespace "su:admin_assets"
  	source_root File.expand_path("../templates", __FILE__)
  	
	  # def copy_view_templates
	  #   #copy_file "initializer.rb", "config/initializers/#{file_name}.rb"
	  #   directory ".", "app/views/admin/#{plural_name}"
	  # end

	  # include Rails::Generators::ResourceHelpers

    # check_class_collision suffix: "Controller"

    # class_option :orm, banner: "NAME", type: :string, required: true,
    #                    desc: "ORM to generate the controller for"

    # argument :attributes, type: :array, default: [], banner: "field:type field:type"

    def create_base_asset_files
      template "admin.js", File.join('app/assets/javascripts', "admin.js")
      template "admin.css", File.join('app/assets/stylesheets', "admin.css")
    end

    def add_files_to_asset_pipeline
      # production.rb 에 추가하기
    end

    def create_admin_asset_directory
      empty_directory 'app/assets/javascripts/admin'
      empty_directory 'app/assets/stylesheets/admin'
    end


    def create_admin_style
      template "admin_style.scss", File.join('app/assets/stylesheets/admin', "style.scss")
    end

    

    # hook_for :template_engine, :test_framework, as: :scaffold

    # Invoke the helper using the controller name (pluralized)
    # hook_for :helper, as: :scaffold do |invoked|
    #   invoke invoked, [ controller_name ]
    # end


  end
end
