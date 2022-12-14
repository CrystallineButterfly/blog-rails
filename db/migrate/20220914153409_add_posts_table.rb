class AddPostsTable < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.references :AuthorId, foreign_key: { to_table: 'users' }
      t.string :Title
      t.text :Text
      t.integer :CommentsCounter
      t.integer :LikesCounter

      t.timestamps
    end
  end
end
