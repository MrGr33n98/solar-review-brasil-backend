class CreateReviews < ActiveRecord::Migration[8.0]
  def change
    create_table :reviews do |t|
      t.references :company, null: false, foreign_key: true
      t.string :user_name
      t.integer :rating
      t.text :comment
      t.datetime :review_date

      t.timestamps
    end
  end
end
