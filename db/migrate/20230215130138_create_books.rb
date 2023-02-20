class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :name
      t.datetime :date_publish
      t.integer :no_of_pages
      t.string :genre
      t.integer :price
      t.integer :author_id
      t.timestamps
    end
  end
end
