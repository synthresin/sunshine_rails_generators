require 'bootstrap-sass'
require "sunshine_rails_generators/version"

module SunshineRailsGenerators
	def app_name
		File.basename(destination_root)).tr('\\', '').tr(". ", "_")
	end
end
