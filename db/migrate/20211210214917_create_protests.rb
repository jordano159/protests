class CreateProtests < ActiveRecord::Migration[7.0]
  def change
    create_table :protests do |t|
      t.text :description
      t.string :location
      t.string :contact_organization
      t.string :contact_name
      t.string :contact_phone
      t.integer :present
      t.string :num_in_series
      t.boolean :is_repeated
      t.string :type

      t.timestamps
    end
  end
end
