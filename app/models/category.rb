class Category < ActiveRecord::Base
  attr_accessible :description, :name, :parent_id, :parent

  belongs_to :parent, :class_name => 'Category'

  has_many :children, :class_name => 'Category', 
  										:foreign_key => :parent_id
  has_many :products, :dependent => :destroy

  validates :name, :presence => true, :uniqueness => true

  scope :root, where(parent_id: nil)
end
