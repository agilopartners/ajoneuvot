class CreateMenus < ActiveRecord::Migration
  def self.up
    create_table :menus do |t|
      t.string :name
      t.integer :type_id
      t.integer :sub_type_id

      t.timestamps
    end
  end

  def self.down
    drop_table :menus
  end
end
