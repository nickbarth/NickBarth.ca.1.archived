ActiveAdmin::Dashboards.build do
  section "Pages" do
   ul do
     Page.all.collect do |page|
       li link_to(page.name, admin_page_path(page))
     end
   end
  end

  section "Recent Posts" do
   ul do
     Post.limit(5).collect do |post|
       li link_to(post.title, admin_post_path(post))
     end
   end
  end
end
