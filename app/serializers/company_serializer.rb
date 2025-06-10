class CompanySerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :logo_url, :website_url, :contact_email, :phone_number, :address, :average_rating, :total_reviews, :is_verified, :created_at, :updated_at
  has_many :reviews
end
