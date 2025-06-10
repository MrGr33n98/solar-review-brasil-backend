ActiveAdmin.register Company do
  # Specify parameters which should be permitted for assignment
  permit_params :name, :description, :logo_url, :website_url, :contact_email, :phone_number, :address, :average_rating, :total_reviews, :is_verified

  # or consider:
  #
  # permit_params do
  #   permitted = [:name, :description, :logo_url, :website_url, :contact_email, :phone_number, :address, :average_rating, :total_reviews, :is_verified]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  # For security, limit the actions that should be available
  actions :all, except: []

  # Add or remove filters to toggle their visibility
  filter :id
  filter :name
  filter :description
  filter :logo_url
  filter :website_url
  filter :contact_email
  filter :phone_number
  filter :address
  filter :average_rating
  filter :total_reviews
  filter :is_verified
  filter :created_at
  filter :updated_at

  # Add or remove columns to toggle their visibility in the index action
  index do
    selectable_column
    id_column
    column :name
    column :description
    column :logo_url
    column :website_url
    column :contact_email
    column :phone_number
    column :address
    column :average_rating
    column :total_reviews
    column :is_verified
    column :created_at
    column :updated_at
    actions
  end

  # Add or remove rows to toggle their visibility in the show action
  show do
    attributes_table do
      row :id
      row :name
      row :description
      row :logo_url
      row :website_url
      row :contact_email
      row :phone_number
      row :address
      row :average_rating
      row :total_reviews
      row :is_verified
      row :created_at
      row :updated_at
    end
    panel "Reviews" do
      table_for company.reviews do
        column :id
        column :user_name
        column :rating
        column :comment
        column :review_date
        column :created_at
        column :updated_at
        column "Actions" do |review|
          link_to "View", admin_review_path(review)
        end
      end
    end
  end

  # Add or remove fields to toggle their visibility in the form
  form do |f|
    f.semantic_errors(*f.object.errors.attribute_names)
    f.inputs do
      f.input :name
      f.input :description
      f.input :logo_url
      f.input :website_url
      f.input :contact_email
      f.input :phone_number
      f.input :address
      f.input :average_rating
      f.input :total_reviews
      f.input :is_verified
    end
    f.actions
  end
end
