class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.string :title
      t.text :location
      t.string :created_by
      t.integer :category_id

      t.timestamps
    end
  end
end
