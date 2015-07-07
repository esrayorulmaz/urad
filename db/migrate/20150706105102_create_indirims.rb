class CreateIndirims < ActiveRecord::Migration
  def change
    create_table :indirims do |t|
      t.text :tur
      t.integer :aralik
      t.integer :oran

      t.timestamps
    end
  end
end
