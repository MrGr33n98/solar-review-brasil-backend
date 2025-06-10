class CreatePageFunctions < ActiveRecord::Migration[8.0]
  def change
    create_table :page_functions do |t|
      t.string :name
      t.string :key
      t.text :content
      t.string :content_type
      t.boolean :is_active

      t.timestamps
    end
  end
end
