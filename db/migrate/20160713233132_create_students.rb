class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.references :user, index: true, foreign_key: true
      t.text :brand
      t.text :linkedin
      t.text :resume
      t.text :jobtracker
      t.text :portfolio
      
      t.timestamps null: false
    end
  end
end
