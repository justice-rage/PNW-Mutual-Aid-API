class Resource < ApplicationRecord
  validates :name, presence: true
  validates :category, presence: true
  validates :website, presence: true
  validates :address, presence: true

  def self.search(search)
    if search
      where(["name ILIKE ?","%#{search}%"])
    else
      all
    end
  end
end
