class Resource < ApplicationRecord
  validates :name, presence: true
  validates :category, presence: true
  validates :website, presence: true
  validates :address, presence: true
end