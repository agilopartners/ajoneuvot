class CreateMotoPosts < ActiveRecord::Migration
  def self.up
    create_table :moto_posts do |t|
      t.string :vehicle_class_id
      t.string :type_section_id
      t.string :moto_make_section_id
      t.string :moto_model_section
      t.date :moto_year_model
      t.string :moto_color_id
      t.string :moto_color_type_id
      t.string :engine_type
      t.string :moto_engine_size
      t.text :moto_information
      t.string :moto_mileage
      t.string :moto_drive_type
      t.string :moto_fuel_type
      t.string :moto_gearbox_type
      t.string :Moto_domicile_type
      t.string :Moto_town_type_section_id

      t.timestamps
    end
  end

  def self.down
    drop_table :moto_posts
  end
end
