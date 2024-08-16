class SendMessage
  def self.perform(message)
    queue_spree = RabbitMQService.queue("spree")
    queue_spree.channel.default_exchange.publish(message.to_json, routing_key: queue_spree.name, persistent: true)
    
    if queue_spree.channel.wait_for_confirms
      puts "Mensagem publicada com sucesso na fila #{queue_spree.name}"
    else
      puts "Falha ao publicar a mensagem na fila #{queue_spree.name}"
    end
    # queue_spree.channel.close
  end
end
