class CreateCohortsStudents < ActiveRecord::Migration
  def change
    create_table :cohorts_students do |t|
      t.references :cohort, index: true, foreign_key: true
      t.references :student, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
