# Amahi Home Server
# Copyright (C) 2007-2013 Amahi
#
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License v3
# (29 June 2007), as published in the COPYING file.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# file COPYING for more details.
#
# You should have received a copy of the GNU General Public
# License along with this program; if not, write to the Amahi
# team at http://www.amahi.org/ under "Contact Us."
class Backup < ActiveRecord::Base

	DB_BACKUPS_DIR = "tmp"
	belongs_to :db


	def backup_db
		password = self.db.password
		user = self.db.username
		dbname = self.db.name
		filename = Time.now.strftime("%y%m%d%H%M%S-#{dbname}.sql.bz2")
		system("mysqldump --add-drop-table -u#{user} -p#{password} #{dbname} | bzip2 > #{filename}")
		filename
	end

	def set_backup_update_to_now
    	self.backedup_at = Time.now
    	self.save
 	end
end
