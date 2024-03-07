module Types
  class VehicleType < Types::BaseObject
    field :license_plate, String, null: false
    field :make,          String, null: false
    field :model,         String, null: false
    field :year,          String, null: false
  end
end
