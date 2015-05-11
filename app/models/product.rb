class Product < ActiveRecord::Base
  validates :title, presence: true
  validates :description, presence: true
  validates :price, presence: true, format: {with: /\A\d+(?:\.\d{0,2})?\z/}



  belongs_to :category
  belongs_to :user
  has_many :reviews

  def average_rating
    @reviews_count ||= reviews.count
	return 0 if @reviews_count < 1
	@average_rating ||=
      (reviews.map(&:rating).reduce(:+) / @reviews_count.to_f).round(1)
  end
end
