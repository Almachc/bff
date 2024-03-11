module Mutations
  module Inputs
    class VehicleInput < Types::BaseInputObject
      argument :license_plate, String, required: true
      argument :make,          String, required: true
      argument :model,         String, required: true
      argument :year,          String, required: true
    end
  end
end
