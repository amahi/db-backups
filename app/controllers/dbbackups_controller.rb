class DbbackupsController < ApplicationController
	before_filter :admin_required

	def index
		@page_title = "DB Backups"
		@dbs = Db.all;
		@backup_updated = []
		@dbs.each do |db|
			if Backup.where(:db_id=>db.id).first
				@backup_updated << Backup.where(:db_id=>db.id).first.backedup_at
			else
				@backup_updated << nil
			end
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
end
