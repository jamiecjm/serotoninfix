ActiveAdmin.register Recipe do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

permit_params :title, :description, :cover_photo, 
ingredients_attributes: [:id, :recipe_id, :_destroy, :description, :order], 
instructions_attributes: [:id, :recipe_id, :_destroy, :description, :order]

form do |f|
	f.inputs do
	  f.input :title
	  f.input :description
	  f.input :cover_photo, as: :file
	  f.has_many :ingredients, sortable: :order, sortable_start: 1, :allow_destroy => true do |t|
	  	t.input :order, input_html: {disabled: true}
	    t.input :description
	  end
	  f.has_many :instructions, sortable: :order, sortable_start: 1, :allow_destroy => true do |t|
	  	t.input :order, input_html: {disabled: true}
	    t.input :description
	  end
	  f.input :tag_list, as: :tags
	end
	f.actions
end


end
