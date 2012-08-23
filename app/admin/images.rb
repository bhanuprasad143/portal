ActiveAdmin.register Image do
  config.clear_action_items!

  form do |f|
  	f.inputs do
    	f.input :file, label: 'File'
    	f.input :imageable_id, as: :select, label: 'Product', collection: Product.all
    	f.input :imageable_type, as: :hidden, input_html: {value: 'Product'}
  	end
    f.buttons
  end

  index do
    column :id
    column :file do |img|
    	image_tag(img.file.thumb.url)
    end
    column :imageable, sortable: false
    column :imageable_type
    column :created_at
    default_actions
  end

	show do |img|
		div class: 'detail-image' do
			image_tag(img.file.details.url)
		end
	  attributes_table do
	    row :id
	    row :imageable
	    row :imageable_type
	    row :created_at
	    row :updated_at
	  end
	  active_admin_comments
	end

end