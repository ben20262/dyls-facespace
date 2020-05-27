class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :content
      t.string :price
      t.string :link
      t.references :seller_id, null: false, foreign_key: true
    end
  end
end
