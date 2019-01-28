#sidekiq_config = { url: ENV['REDIS_URL'] }

Sidekiq.configure_server do |config|
  #config.redis = { url: sidekiq_config }
  config.redis = { url: ENV['REDIS_URL']}
end

Sidekiq.configure_client do |config|
  #config.redis = { url: sidekiq_config }
  config.redis = { url: ENV['REDIS_URL']}
end
