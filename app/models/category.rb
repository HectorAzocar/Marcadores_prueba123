class Category < ApplicationRecord
  belongs_to :category, optional: true
  has_many :categories

  has_many :bookmarks, dependent: :destroy
end
