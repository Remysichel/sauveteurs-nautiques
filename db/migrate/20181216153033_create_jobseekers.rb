class CreateJobseekers < ActiveRecord::Migration[5.2]
  def change
    create_table :jobseekers do |t|
      t.string :first_name
      t.string :last_name
      t.string :genre
      t.string :address
      t.string :phone_number
      t.string :profession

      t.timestamps
    end
  end
end
