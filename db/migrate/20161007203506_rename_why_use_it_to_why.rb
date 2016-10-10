class RenameWhyUseItToWhy < ActiveRecord::Migration[5.0]
  def change
  	rename_column :posts, :why_use_it, :why
  end
end
