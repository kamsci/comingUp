class AddEmailToGithubstudents < ActiveRecord::Migration
  def change
    add_column :githubstudents, :email, :string
  end
end
