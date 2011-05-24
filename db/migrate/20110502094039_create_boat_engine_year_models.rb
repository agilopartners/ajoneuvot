class CreateBoatEngineYearModels < ActiveRecord::Migration
  def self.up
    create_table :boat_engine_year_models do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :boat_engine_year_models
  end
end
