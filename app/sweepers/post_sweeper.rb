class PostSweeper < ActionController::Caching::Sweeper
  observe Post

  def after_update(post)
    expire_cache(post)
  end

  def after_save(post)
    expire_cache(post)
  end

  def after_destroy(post)
    expire_cache(post)
  end

  private

  def expire_cache(post)
    expire_page(controller: '/posts', action: 'show', id: post.id)
    expire_page(controller: '/posts', action: 'index')
  end
end
