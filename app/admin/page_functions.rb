ActiveAdmin.register PageFunction do
  # Specify parameters which should be permitted for assignment
  permit_params :name, :key, :content, :content_type, :is_active

  # or consider:
  #
  # permit_params do
  #   permitted = [:name, :key, :content, :content_type, :is_active]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  # For security, limit the actions that should be available
  actions :all, except: []

  # Add or remove filters to toggle their visibility
  filter :id
  filter :name
  filter :key
  filter :content
  filter :content_type
  filter :is_active
  filter :created_at
  filter :updated_at

  # Add or remove columns to toggle their visibility in the index action
  index do
    selectable_column
    id_column
    column :name
    column :key
    column :content
    column :content_type
    column :is_active
    column :created_at
    column :updated_at
    actions
  end

  # Add or remove rows to toggle their visibility in the show action
  show do
    attributes_table do
      row :id
      row :name
      row :key
      row :content
      row :content_type
      row :is_active
      row :created_at
      row :updated_at
    end
  end

  # Add or remove fields to toggle their visibility in the form
  form do |f|
    f.inputs do
      f.input :name
      f.input :key
      f.input :content, as: :text
      f.input :content_type
      f.input :is_active
    end
    f.actions
  end
end
