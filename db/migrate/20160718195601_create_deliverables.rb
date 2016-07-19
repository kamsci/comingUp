class CreateDeliverables < ActiveRecord::Migration
  def change
    create_table :deliverables do |t|
      t.string :deliverable_type
      t.string :deliverable_name
      t.date :due_date
      t.text :notes
      t.references :cohort, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
