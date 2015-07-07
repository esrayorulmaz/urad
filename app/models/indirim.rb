class Indirim < ActiveRecord::Base
  validates_presence_of :aralik,presence:true, numericality: {only_integer: true}
  validates_presence_of :oran,presence:true, numericality: {only_integer: true}
end
