class Imagetalep < ActiveRecord::Base
  validates :image, :attachment_presence => true
  has_attached_file :image, styles: {large: "200x200" }
  validates_attachment :image, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }
end
