class CreateMachinePosts < ActiveRecord::Migration
  def self.up
    create_table :machine_posts do |t|
      t.string :name
      t.integer :machine_type_id
      t.integer :machine_category_section_id
      t.integer :machine_sub_type_section_id
      t.integer :machine_make_section_id
      t.integer :machine_model_id
      t.string :machine_engine_model
      t.string :machine_price
      t.string :machine_gross_weight
      t.date :machine_year_model
      t.string :machine_engine_size
      t.string :machine_mileage
      t.string :machine_color
      t.string :machine_color_id
      t.string :machine_color_type_id
      t.string :machine_fuel_type
      t.string :machine_drive_type_id
      t.text :machine_information
      t.string :machine_total_owner
      t.integer :machine_domicile_type_id
      t.integer :machine_town_type_section_id

      t.timestamps
    end
  end

  def self.down
    drop_table :machine_posts
  end
end
