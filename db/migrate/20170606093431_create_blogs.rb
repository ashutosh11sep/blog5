class CreateBlogs < ActiveRecord::Migration[5.1]
  def change
    create_table :blogs do |t|
      t.string :title
      t.text :location
      t.text :description

      t.timestamps
    end
  end
end
