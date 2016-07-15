class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.references :student, index: true, foreign_key: true
      t.string :review_type
      t.string :reviewerName
      t.text :reviewContent

      t.timestamps null: false
    end
  end
end
