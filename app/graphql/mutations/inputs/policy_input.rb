module Mutations
  module Inputs
    class PolicyInput < Types::BaseInputObject
      argument :insured, InsuredInput, required: true
      argument :vehicle, VehicleInput, required: true
    end
  end
end
