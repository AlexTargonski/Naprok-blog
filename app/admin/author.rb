ActiveAdmin.register Author do
	permit_params :name, :position 

  index do
    selectable_column
    column :name
    column :position
    actions
  end

  show do
    p author.name
    p author.position
  end

  form do |f|
    f.inputs 'Author Editing' do
      f.input :name
      f.input :position
    end
    f.actions
  end
end