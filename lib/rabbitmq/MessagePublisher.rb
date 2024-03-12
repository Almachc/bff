require 'singleton'

module Rabbitmq
  class MessagePublisher
    include Singleton

    def publish(payload, routing_key)
      exchange.publish(payload, routing_key: routing_key)
    end

    private

    def exchange
      @exchange ||= begin
        connection = Bunny.new(ENV['RABBITMQ_HOST']).tap(&:start)
        channel = connection.create_channel
        channel.direct('sneakers', durable: true)
      end
    end
  end
end
