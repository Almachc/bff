module Rabbitmq
  module Event
    def publish!
      Rabbitmq::MessagePublisher.instance.publish(@payload, @routing_key)
    end
  end
end
