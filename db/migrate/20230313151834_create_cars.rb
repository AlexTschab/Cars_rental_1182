class CreateCars < ActiveRecord::Migration[7.0]
  def change
    create_table :cars do |t|
      t.string :brand
      t.string :model
      t.string :fuel_type
      t.integer :year_of_production
      t.string :transmission
    
      t.timestamps
    end
  end
end
