class CreateShops < ActiveRecord::Migration
  def change
    create_table :shops do |t|
      t.string :name
      t.text :description
      t.string :lines_summary
      t.string :image

      t.timestamps
    end
  end
end
