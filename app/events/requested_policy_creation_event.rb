class RequestedPolicyCreationEvent
  include Rabbitmq::Event

  ROUTING_KEY = 'policy_creation_requested'

  def initialize(policy)
    @routing_key = ROUTING_KEY
    @payload = policy.to_json
  end
end
