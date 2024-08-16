require_relative '../services/rabbitmq_service'

class SendMessage
  def self.perform(message)
    queue_spree = RabbitMQService.queue("spree")
    channel = queue_spree.channel
    queue_spree.channel.default_exchange.publish(message.to_json, routing_key: queue_spree.name, persistent: true)
  end
end
