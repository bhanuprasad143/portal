class Product < ActiveRecord::Base

  belongs_to :category
  has_many   :images, as: :imageable, dependent: :destroy
  has_one 	 :image,  as: :imageable

  validates :category, :presence => true
  validates :name,     :presence => true, :uniqueness => true
  validates :price,    :presence => true, :numericality => {:greater_than_or_equal_to=> 0, :message => 'must be >= 0'}

  attr_accessible :category_id, :description, :name, :price, :category
  accepts_nested_attributes_for :images
  
  class << self
  	def newest(num)
  		order("products.created_at DESC").limit(num)
  	end

  	def recent(num)
  		order("products.updated_at DESC").limit(num)
  	end
  end

end
