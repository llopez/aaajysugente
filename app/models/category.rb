class Category < ApplicationRecord
  has_and_belongs_to_many :articles

  def slug
    name.split.join('-')
  end
end
