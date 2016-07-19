class CreateStaffpicks < ActiveRecord::Migration
  def change
    create_table :staffpicks do |t|
      t.string :name
      t.string :url

      t.timestamps null: false
    end
  end
end
