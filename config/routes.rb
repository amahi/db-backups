Backupapps::Engine.routes.draw do
	# root of the plugin
        root :to => 'backupapps#index'
	# examples of controllers built in this generator. delete at will
	match 'backup' => 'backupapps#backup', :via => :post
	match 'settings' => 'backupapps#settings',:via=> :all
	match 'advanced' => 'backupapps#advanced',:via => :all
end
