class AddRaporUcretiToImagetaleps < ActiveRecord::Migration
  def change
    add_column :imagetaleps, :rapor_ucreti, :float
  end
end