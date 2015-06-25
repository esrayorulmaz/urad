class CreateUcrets < ActiveRecord::Migration
  def change
    create_table :ucrets do |t|
      t.string :atur
      t.string :tur
      t.float :fiyat

      t.timestamps
    end
  end
end
