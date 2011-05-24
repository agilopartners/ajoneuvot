class CreateMachineColorTypeSections < ActiveRecord::Migration
  def self.up
    create_table :machine_color_type_sections do |t|
      t.string :name
      t.integer :Machine_color_id

      t.timestamps
    end
  end

  def self.down
    drop_table :machine_color_type_sections
  end
end
