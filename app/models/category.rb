class Category < ApplicationRecord
  has_and_belongs_to_many :articles

  validates :name, presence: true

  def slug
    name.split.join('-')
  end
end
