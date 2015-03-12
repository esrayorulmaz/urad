require 'carrierwave/orm/activerecord'
class Imagetalep < ActiveRecord::Base

   validates :picture, :presence => true
   mount_uploader :picture, PictureUploader
   belongs_to :user
   belongs_to :report
   has_many :taleparsiv
end
