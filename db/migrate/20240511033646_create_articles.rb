class CreateArticles < ActiveRecord::Migration[7.1]
  def change
    create_table :articles do |t|
      t.string :url
      t.string :title
      t.string :category
      t.date :published
      t.integer :access
      t.integer :comments_count
      t.boolean :closed

      t.timestamps
    end
  end
end
