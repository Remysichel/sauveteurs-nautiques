class CreateOffers < ActiveRecord::Migration[5.2]
  def change
    create_table :offers do |t|
      t.boolean :job
      t.string :required_profile
      t.datetime :date_start
      t.string :formation_name
      t.text :formation_description
      t.string :degree
      t.integer :price
      t.string :job_name
      t.text :job_description
      t.string :contract
      t.references :company, foreign_key: true

      t.timestamps
    end
  end
end
