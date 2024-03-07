module Types
  class PolicyType < Types::BaseObject
    field :id,              ID,          null: false
    field :effective_from,  String,        null: false
    field :effective_until, String,        null: false
    field :insured,         InsuredType, null: false
    field :vehicle,         VehicleType, null: false
  end
end
