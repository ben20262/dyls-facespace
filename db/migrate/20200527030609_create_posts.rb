class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.integer :price
      t.string :link
      t.references :seller, null: false, foreign_key: true
    end
  end
end
