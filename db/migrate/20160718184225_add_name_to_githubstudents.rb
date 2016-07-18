class AddNameToGithubstudents < ActiveRecord::Migration
  def change
    add_column :githubstudents, :name, :string
  end
end
