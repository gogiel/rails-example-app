class LazyWorker
  include Sidekiq::Worker

  def perform
    puts "Thinking..."
    sleep 5
    puts "Eureka!"
  end
end
