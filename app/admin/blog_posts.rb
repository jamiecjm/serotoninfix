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

permit_params :title, :content, :cover_photo, :handle, :published?, :published_at, :blog_id, :tag_list

index do
	selectable_column
	id_column
	column :blog
	column :title
    column :handle
    column :tag_list
    column :published?
    column :published_at
    column :created_at
    column :updated_at
    actions
end

show do
    attributes_table do
      row :blog
      row :title
      row :content do |p|
      	p.content.html_safe
      end
      row :cover_photo do |p|
      	image_tag p.cover_photo.url
      end
      row :handle
      row :tag_list
      row :published?
      row :published_at
      row :created_at
      row :updated_at
    end
end

form do |f|
	f.semantic_errors *f.object.errors.keys
	inputs do
		input :blog
		input :title
		input :content, input_html: {class: 'tinymce'}
		input :cover_photo, as: :file
		input :tag_list, as: :tags
		input :published?
	end

	actions
end

end
