class CreateMachineTownTypeSections < ActiveRecord::Migration
  def self.up
    create_table :machine_town_type_sections do |t|
      t.string :name
      t.integer :Machine_domicile_type_id

      t.timestamps
    end
  end

  def self.down
    drop_table :machine_town_type_sections
  end
end
