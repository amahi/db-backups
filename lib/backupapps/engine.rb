module Backupapps
	class Engine < ::Rails::Engine
		# NOTE: do not isolate the namespace unless you really really
		# want to adjust all your controllers views, etc., making Amahi's
		# platform hard to reach from here
		# isolate_namespace Backupapp
		initializer :append_migrations do |app|
			unless app.root.to_s.match root.to_s
				config.paths["db/migrate"].expanded.each do |expanded_path|
					app.config.paths["db/migrate"] << expanded_path
				end
			end
		end
	end
end
