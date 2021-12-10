class RenameTypeInProtests < ActiveRecord::Migration[7.0]
  def change
    rename_column :protests, :type, :kind
  end
end
