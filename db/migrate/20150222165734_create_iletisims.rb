class CreateIletisims < ActiveRecord::Migration
  def change
    create_table :iletisims do |t|
      t.string :title
      t.string :content
      t.string :sender

      t.timestamps
    end
  end
end
