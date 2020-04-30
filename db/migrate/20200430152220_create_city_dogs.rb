class CreateCityDogs < ActiveRecord::Migration[5.2]
  def change
    create_table :city_dogs do |t|
      t.belongs_to :city, index: true
      t.belongs_to :dog, index: true
      
      t.timestamps
    end
  end
end
