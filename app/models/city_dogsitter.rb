class CityDogsitter < ApplicationRecord
  belongs_to :city
  belongs_to :dogsitter
end
