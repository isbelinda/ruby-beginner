class RenameCommerterToCommenter < ActiveRecord::Migration[5.1]
  def change
    rename_column :comments, :commerter, :commenter
  end
end
