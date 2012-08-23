ActiveAdmin.register Category do
  # config.clear_action_items!

  form do |f|
  	f.inputs do
    	f.input :parent, as: :select, collection: Category.root.where(["categories.id <> ?", f.object.id.to_i])
    	f.input :name
    	f.input :description
  	end
    f.buttons
  end

  index do
    column :id
    column :parent
    column :name
    column :description do |cat|
    	truncate(strip_tags(cat.description), length: 200)
    end
    column :total_products do |cat|
    	cat.products.count
    end
    column :created_at
    default_actions
  end

	show do |cat|
	  attributes_table do
	    row :id
	    row :parent
	    row :name
	    row :description do
	    	raw cat.description
	    end
	    row :total_products do
	    	cat.products.count
	    end
	    row :created_at
	    row :updated_at
	  end
	  active_admin_comments
	end  

end