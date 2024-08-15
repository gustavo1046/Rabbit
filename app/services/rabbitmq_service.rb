class RabbitMQService
    def self.queue(queue_name)
      @queues ||= {}
      @queues[queue_name] ||= begin
        channel = $conn.create_channel
        channel.queue(queue_name)
      end
    end
  end
  