class CreateCandidacies < ActiveRecord::Migration[5.2]
  def change
    create_table :candidacies do |t|
      t.references :jobseeker, foreign_key: true
      t.references :offer, foreign_key: true

      t.timestamps
    end
  end
end
