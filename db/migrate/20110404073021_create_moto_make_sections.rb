class CreateMotoMakeSections < ActiveRecord::Migration
  def self.up
    create_table :moto_make_sections do |t|
      t.string :name
      t.integer :type_id

      t.timestamps
    end
  end

  def self.down
    drop_table :moto_make_sections
  end
end
