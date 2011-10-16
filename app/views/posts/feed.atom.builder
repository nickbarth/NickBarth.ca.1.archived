atom_feed :language => 'en-US' do |feed|
  feed.title @title
  feed.updated @updated

  @news_items.each do |item|
    next if item.updated_at.blank?

    feed.entry(item) do |entry|
      entry.url post_url(item)
      entry.title item.title
      entry.content item.body, :type => 'html'
      entry.updated(item.updated_at.strftime("%Y-%m-%dT%H:%M:%SZ")) 
      entry.author do |author|
        author.name "Nick Barth"
      end
    end
  end
end
