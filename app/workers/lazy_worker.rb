class LazyWorker
  include Sidekiq::Worker

  def perform(*args)
    raise "I don't want to work!"
  end
end
