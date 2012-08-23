class Image < ActiveRecord::Base
  attr_accessible :imageable_id, :imageable_type, :file

  belongs_to :imageable, :polymorphic => true

  validates :imageable_id, :imageable_type, :presence => true

  mount_uploader :file, ImageTypeUploader
end
