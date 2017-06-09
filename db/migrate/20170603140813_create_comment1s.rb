class CreateComment1s < ActiveRecord::Migration[5.1]
  def change
    create_table :comment_pros do |t|
      t.string :commenter
      t.text :body
      
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end
