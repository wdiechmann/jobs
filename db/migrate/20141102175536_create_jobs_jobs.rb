class CreateJobsJobs < ActiveRecord::Migration
  def change
    create_table :jobs_jobs do |t|
      t.string :where_to
      t.string :when_to
      t.string :how_to
      t.string :who_to
      t.text :description

      t.timestamps
    end
  end
end
