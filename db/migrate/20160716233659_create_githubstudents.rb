class CreateGithubstudents < ActiveRecord::Migration
  def change
    create_table :githubstudents do |t|
      t.references :user, index: true, foreign_key: true
      t.string :provider_id
      t.string :provider_token
      t.string :provider_name
      t.text :picture

      t.timestamps null: false
    end
  end
end
