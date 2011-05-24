class CreateCarFuelTypes < ActiveRecord::Migration
  def self.up
    create_table :car_fuel_types do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :car_fuel_types
  end
end
