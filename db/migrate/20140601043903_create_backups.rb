class CreateBackups < ActiveRecord::Migration
  def change
    create_table "backups" do |t|
      t.integer  "db_id"
      t.datetime "backedup_at"
      t.timestamps
    end
  end
end
