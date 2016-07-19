class AddFieldsToStaffPicks < ActiveRecord::Migration
  def change
    add_column :staffpicks, :date, :date
    add_column :staffpicks, :host_location, :string
    add_column :staffpicks, :staff_attending, :string
    add_column :staffpicks, :notes, :string
  end
end
