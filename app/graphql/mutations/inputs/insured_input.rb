module Mutations
  module Inputs
    class InsuredInput < Types::BaseInputObject
      argument :name,            String, required: true
      argument :document_number, String, required: true
    end
  end
end
