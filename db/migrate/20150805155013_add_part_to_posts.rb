class AddPartToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :part_id, :integer
  end
end
