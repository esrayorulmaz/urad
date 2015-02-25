require 'carrierwave/orm/activerecord'
class Imagetalep < ActiveRecord::Base
  validates :picture, :presence => true
 mount_uploader :picture, PictureUploader
end
