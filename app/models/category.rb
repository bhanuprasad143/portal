class Category < ActiveRecord::Base
  attr_accessible :description, :name, :parent_id

  has_many :products, :dependent => :destroy

  validates :name, :presence => true, :uniqueness => true
end
