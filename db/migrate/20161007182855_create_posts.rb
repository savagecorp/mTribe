class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.text :description
      t.string :url
      t.text :why_use_it
      t.text :tags

      t.timestamps
    end
  end
end
