class CreatePosts < ActiveRecord::Migration[7.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.belongs_to :users, foreign_key: true
      
      t.timestamps
    end
  end
end
