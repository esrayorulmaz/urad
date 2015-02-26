class CreateImagetaleps < ActiveRecord::Migration
  def change
    create_table :imagetaleps do |t|
      t.string :gonderen_tc
      t.string :gonderen_name
      t.string :gonderen_mail
      t.string :image_tur
      t.string :unvan
      t.text :hastatc
      t.text :hastaname
      t.integer :hastayasi
      t.text :hastacinsiyet
      t.text :durum
      t.bool  :picture
      t.string  :picture
      t.timestamps
    end
  end
end
