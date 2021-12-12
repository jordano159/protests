class AddDateToProtest < ActiveRecord::Migration[7.0]
  def change
    add_column :protests, :date, :date
  end
end
