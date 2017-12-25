class CreateLikeAndPosts < ActiveRecord::Migration[5.1]
  def change
    create_table :like_and_posts do |t|
      t.references :like, foreign_key: true
      t.references :post, foreign_key: true

      t.timestamps
    end
  end
end
