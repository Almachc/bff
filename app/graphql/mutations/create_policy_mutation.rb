class Mutations::CreatePolicyMutation < Mutations::BaseMutation
  argument :attributes, Mutations::Inputs::PolicyInput, required: true

  field :message, String, null: false

  def resolve(attributes:)
    RequestedPolicyCreationEvent.new(attributes).publish!

    { message: 'OK' }
  end
end
