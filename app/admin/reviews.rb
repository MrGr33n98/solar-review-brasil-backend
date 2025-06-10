ActiveAdmin.register Review do
  # Specify parameters which should be permitted for assignment
  permit_params :company_id, :user_name, :rating, :comment, :review_date

  # or consider:
  #
  # permit_params do
  #   permitted = [:company_id, :user_name, :rating, :comment, :review_date]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  # For security, limit the actions that should be available
  actions :all, except: []

  # Add or remove filters to toggle their visibility
  filter :id
  filter :company
  filter :user_name
  filter :rating
  filter :comment
  filter :review_date
  filter :created_at
  filter :updated_at

  # Add or remove columns to toggle their visibility in the index action
  index do
    selectable_column
    id_column
    column :company
    column :user_name
    column :rating
    column :comment
    column :review_date
    column :created_at
    column :updated_at
    actions
  end

  # Add or remove rows to toggle their visibility in the show action
  show do
    attributes_table do
      row :id
      row :company
      row :user_name
      row :rating
      row :comment
      row :review_date
      row :created_at
      row :updated_at
    end
  end

  # Add or remove fields to toggle their visibility in the form
  form do |f|
    f.inputs do
      f.input :company
      f.input :user_name, input_html: { readonly: true }
      f.input :rating
      f.input :comment
      f.input :review_date, input_html: { readonly: true }
    end
    f.actions
  end
end
