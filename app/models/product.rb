class Product < ActiveRecord::Base
  belongs_to :category
  belongs_to :user
  has_many :reviews

  DECIMAL_REGEXP = /\A\d+(?:\.\d{0,2})?\z/

  validates :title,
            presence:  true

  validates :description,
            presence: true

  validates :price,
            presence: true,
            format: {with: DECIMAL_REGEXP}

  attr_accessor :average_rating

  def average_rating
    Product.includes(:reviews).average(:rating)
  end
end
