# Migration for post table
class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.boolean :is_published
      t.string :image

      t.timestamps
    end
  end
end
