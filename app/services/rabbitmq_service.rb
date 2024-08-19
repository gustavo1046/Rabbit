class RabbitMQService
  def self.queue(queue_name)
    @queues ||= {}
    @queues[queue_name] ||= begin
      channel = $conn.create_channel
      queue = channel.queue(queue_name, durable: true)
      queue
    end
  end
end
