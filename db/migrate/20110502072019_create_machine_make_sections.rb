class CreateMachineMakeSections < ActiveRecord::Migration
  def self.up
    create_table :machine_make_sections do |t|
      t.string :name
      t.integer :machine_sub_type_sectionid

      t.timestamps
    end
  end

  def self.down
    drop_table :machine_make_sections
  end
end
