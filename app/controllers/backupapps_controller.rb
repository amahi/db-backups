class BackupappsController < ApplicationController
	before_filter :admin_required

	def index
		@dbs = Db.all;
		@backup_updated = []
		@dbs.each do |db|
			@backup_updated << Backup.where(:db_id=>db.id).first.backedup_at
		end

		# do your main thing here
	end

	def backup
		id = params[:db_id]
		db = Db.find(id)
		b = Backup.where(:db_id=>id).first_or_create
		filename = b.backup_db
		b.set_backup_update_to_now
		send_file Rails.root.join(filename)
	end



#	def settings
#		# do the settings page here
#	end

#	def advanced
#		# do the advanced settings page here
#	end
end
