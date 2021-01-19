class DropCreateJobsTable < ActiveRecord::Migration[5.2]
  def change
    drop_table :jobs_tables
  end
end
