ActiveAdmin.register Author do
	permit_params :fullname, :position, :avatar

		show do |t|
			attributes_table do
				row :fullname
				row :position
				
			end
		end

		form :html => { :enctype => "multipart/form-data" } do |f|
			f.inputs do
				f.input :fullname
				f.input :position
			
			end
			f.actions
		end
end

