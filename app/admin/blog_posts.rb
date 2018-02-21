ActiveAdmin.register BlogPost do
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

permit_params :title, :content, :cover_photo, :handle, :published?, :published_at, :blog_id

form do |f|
	f.semantic_errors *f.object.errors.keys
	inputs do
		input :blog
		input :title
		input :content, input_html: {class: 'tinymce'}
		input :cover_photo, as: :file
		input :published?
		input :published_at
	end

	actions
end

end
