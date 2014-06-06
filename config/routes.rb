Dbbackups::Engine.routes.draw do
	# root of the plugin
        root :to => 'dbbackups#index'
        match 'backup' => 'dbbackups#backup', :via => :post
end
