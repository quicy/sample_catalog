class Shop < ActiveRecord::Base
  attr_accessible :name, :description, :lines_summary, :image, :image_cache
  mount_uploader :image, ShopImageUploader

  validates_presence_of :name, :description, :lines_summary
  validates_uniqueness_of :name
end
