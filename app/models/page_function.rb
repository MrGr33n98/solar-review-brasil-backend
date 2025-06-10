class PageFunction < ApplicationRecord
  validates :key, uniqueness: true
end
