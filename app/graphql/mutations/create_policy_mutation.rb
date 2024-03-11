class Mutations::CreatePolicyMutation < Mutations::BaseMutation
  argument :attributes, Mutations::Inputs::PolicyInput, required: true

  field :message, String, null: false

  def resolve(attributes:)
    { message: 'OK' }
  end
end
