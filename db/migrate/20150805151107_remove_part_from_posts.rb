class RemovePartFromPosts < ActiveRecord::Migration
  def change
    remove_column :posts, :part, :integer
  end
end
