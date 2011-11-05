class SiteSweeper < ActionController::Caching::Sweeper
  observe Post, Page, Category

  def after_update(record)
    expire_cache
  end

  def after_save(record)
    expire_cache
  end

  def after_destroy(record)
    expire_cache
  end

  private

  def expire_cache
    cache_dir = ActionController::Base.page_cache_directory
    FileUtils.rm_r("#{cache_dir}/posts") rescue Errno::ENOENT
    FileUtils.rm_r("#{cache_dir}/categories") rescue Errno::ENOENT
    (Page.all.map(&:slug) << "index" << "posts").each do |id|
      expire_page(controller: '/pages', action: 'show', id: id)
    end
  end
end
