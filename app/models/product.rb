class Product < ActiveRecord::Base
  validates :title, :description, :image_url, presence: true
  validates :price, numericality: {greater_than_or_equal_to: 0.01}
  validates :title, uniqueness: true
  validates :title, length: {minimum: 3, maximum: 15}
  validates :image_url, allow_blank: true, format: {
    with: %r{\.(gif|jpg|png)$}i,
    message: 'adress is not correct'
  }
end
