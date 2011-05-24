class CreateMotoTownTypeSections < ActiveRecord::Migration
  def self.up
    create_table :moto_town_type_sections do |t|
      t.string :name
      t.integer :moto_domicile_type_id

      t.timestamps
    end
  end

  def self.down
    drop_table :moto_town_type_sections
  end
end
