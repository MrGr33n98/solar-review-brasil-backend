class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :company_id, :user_name, :rating, :comment, :review_date, :created_at, :updated_at
end
