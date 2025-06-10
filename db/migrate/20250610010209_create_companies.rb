class CreateCompanies < ActiveRecord::Migration[8.0]
  def change
    create_table :companies do |t|
      t.string :name
      t.text :description
      t.string :logo_url
      t.string :website_url
      t.string :contact_email
      t.string :phone_number
      t.string :address
      t.float :average_rating
      t.integer :total_reviews
      t.boolean :is_verified

      t.timestamps
    end
  end
end
