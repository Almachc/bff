module Types
  class InsuredType < Types::BaseObject
    field :name,            String, null: false
    field :document_number, String, null: false
  end
end
