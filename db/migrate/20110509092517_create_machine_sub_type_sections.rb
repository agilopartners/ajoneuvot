class CreateMachineSubTypeSections < ActiveRecord::Migration
  def self.up
    create_table :machine_sub_type_sections do |t|
      t.string :name
      t.integer :machine_category_id

      t.timestamps
    end
  end

  def self.down
    drop_table :machine_sub_type_sections
  end
end
