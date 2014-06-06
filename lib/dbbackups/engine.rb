module Dbbackups
	class Engine < ::Rails::Engine
		# NOTE: do not isolate the namespace unless you really really
		# want to adjust all your controllers views, etc., making Amahi's
		# platform hard to reach from here
		# isolate_namespace Dbbackups
		initializer :assets do |config|
	      Rails.application.config.assets.paths << root.join("app", "assets", "images")
	    end
	end
end
