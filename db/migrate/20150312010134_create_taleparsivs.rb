class CreateTaleparsivs < ActiveRecord::Migration
  def change
    create_table :taleparsivs do |t|
      t.integer :rapor_id
      t.integer :user_id
      t.integer :imagetalep_id

      t.timestamps
    end
  end
end
