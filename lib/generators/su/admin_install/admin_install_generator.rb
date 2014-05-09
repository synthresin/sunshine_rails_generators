require 'rails/generators/base'
require 'rails/generators/resource_helpers'

module SunshineRailsGenerators
  class AdminInstallGenerator < Rails::Generators::Base

  	namespace "su:admin_install"
  	source_root File.expand_path("../templates", __FILE__)

    Rails::Generators.invoke "su:admin_assets"
    Rails::Generators.invoke "su:admin_layout"
    Rails::Generators.invoke "su:admin_template"
    Rails::Generators.invoke "su:admin_application_controller"

  end
end
