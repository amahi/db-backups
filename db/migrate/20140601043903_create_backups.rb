class CreateBackups < ActiveRecord::Migration[5.2]
  def change
    create_table "backups" do |t|
      t.integer  "db_id"
      t.datetime "backedup_at"
      t.timestamps
    end
  end
end
