class PostWorker
  include Sidekiq::Worker

  def perform(post_id)
    p = Post.find(post_id)
    p.update(title: "#{p.title} - WORKED !")
  end
end
