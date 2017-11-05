class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :description
      t.string :source
      t.string :url
      t.string :image
      t.integer :fake
      t.integer :real
      t.string :published

      t.timestamps
    end
  end
end
