module Mutations
  module Inputs
    class PolicyInput < Types::BaseInputObject
      argument :effective_from,  String,       required: true
      argument :effective_until, String,       required: true
      argument :insured,         InsuredInput, required: true
      argument :vehicle,         VehicleInput, required: true
    end
  end
end
