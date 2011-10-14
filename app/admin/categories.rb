ActiveAdmin.register Category do
  
  index do
    column :title do |p|
      link_to p.title, edit_admin_category_path(p.id)
    end
    column "Published Date", :created_at
    # default_actions
  end

  member_action :edit do
    @category = Category.find(params[:id])
    @category.id = params[:id]
  end 

  member_action :update do
    category = Category.find(:first, :conditions => { :title => params[:id]} )
    category.title =  params[:category][:title]
    category.save
    redirect_to :action => :index
    redirect_to :back, :notice => "Category Updated"
  end
  
end
