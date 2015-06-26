class CreateFaxJobs < ActiveRecord::Migration
  def change
    create_table :fax_jobs do |t|
      t.string :fax
      t.string :file_name
      t.string :sender_email
      t.string :sender_name

      t.timestamps null: false
    end
  end
end
