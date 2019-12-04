class Category < ApplicationRecord
  has_and_belongs_to_many :articles

  validates :name, presence: true

  scope :with_articles, -> { joins(:articles).distinct }

  def slug
    name.split.join('-')
  end
end
