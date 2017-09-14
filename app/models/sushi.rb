class Sushi < ApplicationRecord
  belongs_to :user
  validates_presence_of :name, :price, :description

  validates :price, numericality: { greater_than: 0 }

  def self.sort_by_price
    order(:price)
  end
  def self.sort_by_name
    order(:name)
  end
  def info
    "#{:name}: $#{:price} - #{:description}"
  end
end
