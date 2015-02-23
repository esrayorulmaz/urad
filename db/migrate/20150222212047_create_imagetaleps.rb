class CreateImagetaleps < ActiveRecord::Migration
  def change
    create_table :imagetaleps do |t|
      t.string :gonderen_tc
      t.string :gonderen_name
      t.string :gonderen_mail
      t.string :image_tur
      t.string :unvan
      t.attachment :image
      t.text :hastatc
      t.text :hastaname
      t.integer :hastayasi
      t.text :hastacinsiyet
      t.text :durum
      t.timestamps
    end
  end
end
