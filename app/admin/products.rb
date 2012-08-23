ActiveAdmin.register Product do
  config.clear_action_items!


  index do
    column :id
    column :category
    column :name
    column :price, sortable: :price do |p|
    	number_to_currency(p.price)
    end
    column :description do |p|
    	truncate(strip_tags(p.description), length: 200)
    end
    column :created_at
    default_actions
  end

	show do |product|
	  attributes_table do
	    row :id
	    row :category
	    row :name
	    row :price do
	    	number_to_currency(product.price)
	    end
	    row :description do
	    	raw product.description
	    end
	    row :created_at
	    row :updated_at
	  end
	  active_admin_comments
	end

end