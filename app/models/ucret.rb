class Ucret < ActiveRecord::Base

  validates_presence_of :fiyat,presence:true, numericality: {only_float: true}
  validates :fiyat, presence: true
end
