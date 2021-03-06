class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :content
      t.string :slog
      t.string :references
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
