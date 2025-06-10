class PageFunctionSerializer < ActiveModel::Serializer
  attributes :id, :name, :key, :content, :content_type, :is_active, :created_at, :updated_at
end
